import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import 'api_client.dart';
import 'connection/connection.dart';
import 'connection/ws_connection.dart';
import 'room/room.dart';
import 'room/room_data.dart';
import 'room/room_description.dart';
import 'service.dart';
import 'token_storage.dart';

class Authentication {
  final String? id;
  final String? token;
  final dynamic data;

  Authentication({
    this.id,
    this.token,
    this.data,
  });

  factory Authentication.fromJson(Map<String, dynamic> json) => Authentication(
        id: json['id'],
        token: json['token'],
        data: json['data'],
      );
}

class CTParams {
  final String url;
  final List<String>? protocols;

  CTParams(this.url, {this.protocols});
}

typedef ConnectionBuilder = Connection Function(CTParams params);

class MagxClientParams {
  final num? port;
  final String address;
  final bool secure;
  final String? id;
  final String? token;
  final dynamic data;
  final ConnectionBuilder? transport;

  MagxClientParams({
    required this.address,
    this.secure = false,
    this.port,
    this.id,
    this.token,
    this.data,
    this.transport,
  });
}

class MagxClient {
  final TokenStorage? tokenStorage;
  @visibleForTesting
  late MagxApiClient api;

  String? address;
  late bool secure;
  num? port;
  final ConnectionBuilder transport;

  String get uri => '${secure ? "https" : "http"}://$address${port != null ? ":$port" : ""}/magx';

  MagxClient(
    MagxClientParams params, {
    this.tokenStorage,
    http.Client? client,
    Iterable interceptors = const [],
  }) : transport = params.transport ?? ((p) => WSConnection(p)) {
    address = params.address;
    port = params.port;
    secure = params.secure;

    api = MagxApiClient.create(
      baseUrl: uri,
      tokenStorage: tokenStorage,
      client: client,
      interceptors: interceptors,
    );
  }

  Future<Response<Authentication>> authenticateGuest({required String deviceId, String? fmsToken}) => api.service
      .authenticateGuest(
        deviceId: deviceId,
        fmsToken: fmsToken,
      )
      .then(
        (value) => value.copyWith(body: value.body != null ? Authentication.fromJson(value.body) : null),
      );

  Future<Response<Authentication>> authenticateGoogle({required String accessToken, String? fmsToken}) {
    return api.service
        .authenticateGoogle(
          accessToken: accessToken,
          fmsToken: fmsToken,
        )
        .then(
          (value) => value.copyWith(body: value.body != null ? Authentication.fromJson(value.body) : null),
        );
  }

  Future<Response<Authentication>> authenticateApple({required String accessToken, String? fmsToken}) => api.service
      .authenticateApple(
        accessToken: accessToken,
        fmsToken: fmsToken,
      )
      .then(
        (value) => value.copyWith(body: value.body != null ? Authentication.fromJson(value.body) : null),
      );

  Future<Response<Authentication>> verify({String? token}) {
    return api.service
        .verify(
          token: token ?? tokenStorage!.token,
        )
        .then(
          (value) => value.copyWith(body: value.body != null ? Authentication.fromJson(value.body) : null),
        );
  }

  Future<Response<RoomDescription>> getRoom(String id) => api.service.getRoom(id).then(
        (value) => value.isSuccessful
            ? value.copyWith(body: RoomDescription.fromJson(value.body))
            : value.copyWith(body: null),
      );

  Future<Response<Iterable<RoomDescription>>> getRooms([List<String>? names]) => api.service.getRooms(names ?? []).then(
        (value) {
          final jsonList = value.body as List<dynamic>;
          final jsonMappedList = jsonList.map((e) => (e as Map).cast<String, dynamic>());
          final descriptions = jsonMappedList.map($RoomDescription.fromJson).toList();

          return value.copyWith(
            body: value.body != null ? descriptions : null,
          );
        },
      );

  Future<Room?> connect(String id, {bool? reconnect, Map<String, dynamic>? options}) async {
    final user = await verify();
    final descriptionResponse = await getRoom(id);
    if (descriptionResponse.isSuccessful == false || user.isSuccessful == false) {
      return null;
    }
    final description = descriptionResponse.body!;
    print('[MagxClient.connect]: ${description.clients}');
    if (description.clients.contains(user.body!.id)) {
      return _connectRoom(RoomData.fromJson(description.toJson()), reconnect: reconnect ?? true);
    } else {
      final joinResponse = await api.service.joinRoom(
        description.id,
        options: {
          'options': options,
        },
      ).then(
        (value) => value.isSuccessful
            ? value.copyWith(body: RoomData.fromJson(value.body))
            : value.copyWith(
                body: null,
              ),
      );
      if (joinResponse.isSuccessful) {
        return _connectRoom(joinResponse.body!, reconnect: false);
      }
    }
    return null;
  }

  Future leaveRoom(String id) => api.service.leaveRoom(id);

  Future<Response<RoomData?>> create(String name, {Map<String, dynamic>? options}) async {
    final data = await api.service.createRoom(CreateRoomPayload(name, options)).then(
          (value) => value.isSuccessful
              ? value.copyWith(
                  body: RoomData.fromJson(value.body),
                )
              : value.copyWith(body: null),
        );
    return data;
  }

  Future<Response<Room>> createAndConnect(String name, {Map<String, dynamic>? options}) async {
    final data = await api.service.createRoom(CreateRoomPayload(name, options)).then(
          (value) => value.isSuccessful
              ? value.copyWith(
                  body: RoomData.fromJson(value.body),
                )
              : value.copyWith(body: null),
        );
    if (data.isSuccessful) {
      return data.copyWith(body: await _connectRoom(data.body!, reconnect: false));
    }
    return data.copyWith(body: null);
  }

  Future<Room> _connectRoom(RoomData data, {bool? reconnect}) async => Room(
        this,
        data,
      ).ready.then(
            (value) => value
              ..send(
                reconnect == true ? Message.reconnected() : Message.joined(),
              ),
          );
}
