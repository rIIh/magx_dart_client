import 'dart:io';
import 'dart:typed_data';

import 'package:msgpack_dart/msgpack_dart.dart';
import 'package:rxdart/rxdart.dart';

import '../client.dart';
import 'connection.dart';

class WSConnection implements Connection {
  bool _closed = false;
  Subject<Message> _messages;
  WebSocket ws;

  @override
  Stream<Message> get stream => _messages;

  WSConnection(CTParams params) {
    _messages = BehaviorSubject();
    initialize(params);
  }

  void initialize(CTParams params) async {
    ws = await WebSocket.connect(params.url, protocols: params.protocols);
    ws.listen(
      (data) {
        if (_closed != true) {
          final event = Deserializer(Uint8List.fromList([data.first])).decode();
          final args = Deserializer(Uint8List.fromList(data.skip(1).toList())).decode();
          _messages.add(Message.fromJson({'event': event, 'data': args}));
        }
      },
      onError: print,
      onDone: () {
        if (_closed != true) {
          _messages.add(Message.closed(ws.closeCode, ws.closeReason));
          dispose();
          _closed = true;
        }
      },
      cancelOnError: false,
    );
  }

  @override
  void send(Message message) {
    final packer = Serializer();
    packer.encode(encode(message.event));
    if (message.data != null) {
      packer.encode(message.data);
    }
    ws.add(packer.takeBytes().toList());
  }

  @override
  void dispose() {
    ws.close(WebSocketStatus.normalClosure, 'Client disposed').then((value) => _messages.close());
    _closed = true;
  }
}
