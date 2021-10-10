import 'dart:async';

import '../client.dart';
import '../common/disposable.dart';
import '../connection/connection.dart';
import 'room_data.dart';

class Room implements Disposable {
  final Completer<Room> _ready = Completer();
  final String id;
  final num? port;
  late Connection connection;
  String? name;
  num patchIndex = 0;

  Stream<Message>? get stream => connection.stream;

  Future<Room> get ready => _ready.future;

  Room(
    MagxClient client,
    RoomData roomData,
  )   : id = roomData.id,
        port = roomData.port ?? client.port {
    final url =
        'ws${client.secure ? 's' : ''}://${client.address}${port != null ? ":${port!.toStringAsFixed(0)}" : ""}/$id?${client.tokenStorage!.token}';
    connection = client.transport(CTParams(url));
    connection.stream!
        .firstWhere((element) => element.event == MessageEvent.connected)
        .then((value) => _ready.complete(this));
  }

  void send(Message message) {
    connection.send(message);
  }

  @override
  void dispose() {
    connection.dispose();
  }
}
