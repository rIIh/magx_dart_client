import 'dart:convert';
import 'dart:io';

import 'package:messagepack/messagepack.dart';
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
          final unpacker = Unpacker(data);
          final event = unpacker.unpackInt();
          var args = unpacker.unpackList();
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
    final packer = Packer();
    packer.packInt(encode(message.event));
    if (message.data != null) {
      packer.packListLength(message.data.length);
      for (final arg in message.data) {
        if (arg is String) {
          packer.packString(arg);
        } else {
          packer.packString(jsonEncode(arg));
        }
      }
    }
    ws.add(packer.takeBytes().toList());
  }

  @override
  void dispose() {
    ws.close(WebSocketStatus.normalClosure, 'Client disposed').then((value) => _messages.close());
    _closed = true;
  }
}
