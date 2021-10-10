import 'package:chopper/chopper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service.chopper.dart';

part 'service.g.dart';

@JsonSerializable()
class CreateRoomPayload {
  final String? name;
  final Object? options;

  CreateRoomPayload(this.name, this.options);

  factory CreateRoomPayload.fromJson(Map<String, dynamic> json) => _$CreateRoomPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$CreateRoomPayloadToJson(this);
}

@ChopperApi()
abstract class _MagxService extends ChopperService {
  @Post(path: '/auth')
  // ignore: unused_element
  Future<Response> _authenticate(@Body() Map<String, dynamic> body);

  @Get(path: '/auth/{token}')
  Future<Response> verify({@Path('token') String? token});

  @Get(path: '/rooms')
  Future<Response> getRooms(@Query() List<String> names);

  @Get(path: '/rooms/{room_id}')
  Future<Response> getRoom(@Path('room_id') String id);

  @Post(path: '/rooms')
  Future<Response> createRoom(@Body() CreateRoomPayload body);

  @Post(path: '/rooms/{room_id}/join')
  Future<Response> joinRoom(@Path('room_id') String id, {@Body() Map<String, dynamic>? options});

  @Post(path: '/rooms/{room_id}/leave', optionalBody: true)
  Future<Response> leaveRoom(@Path('room_id') String id);

  @Post(path: '/rooms/{room_id}/close', optionalBody: true)
  Future<Response> closeRoom(@Path('room_id') String id);

  @Post(path: '/rooms/{room_id}/update')
  Future<Response> updateRoom(@Path('room_id') String id, {@Body() Map<String, dynamic>? body});
}

class MagxService extends _$_MagxService implements _MagxService {
  MagxService([ChopperClient? client]) : super(client);

  Map<String, dynamic> wrapWithData(Map body) => {'data': body};

  Future<Response> authenticateGuest({required String deviceId, String? fmsToken}) {
    return _authenticate(
      wrapWithData(
        {'type': 'guest', 'deviceId': deviceId, 'mToken': fmsToken}..removeWhere((key, value) => value == null),
      ),
    );
  }

  Future<Response> authenticateGoogle({required String accessToken, String? fmsToken}) {
    return _authenticate(
      wrapWithData(
        {'type': 'google', 'accessToken': accessToken, 'mToken': fmsToken}..removeWhere((key, value) => value == null),
      ),
    );
  }

  Future<Response> authenticateApple({required String accessToken, String? fmsToken}) {
    return _authenticate(wrapWithData({
      'type': 'apple',
      'id_token': accessToken,
      'mToken': fmsToken,
    }));
  }

  @override
  Type get definitionType => MagxService;
}
