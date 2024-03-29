import 'dart:io';

import 'package:magx_client/src/client.dart';
import 'package:magx_client/src/connection/connection.dart';
import 'package:magx_client/src/room/room.dart';
import 'package:magx_client/src/token_storage.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'mock/check_integration_target.dart';

void main() async {
  test(
    'websocket connects normally',
    () async {
      final websocket = await WebSocket.connect('ws://echo.websocket.org');
      final stream = websocket.asBroadcastStream();
      expectLater(
        stream,
        emitsInOrder(
          [
            emits(equals('test message')),
            emits(equals('test message')),
            emitsDone,
          ],
        ),
      );
      websocket.add('test message');
      websocket.add('test message');
      websocket.close();
    },
    timeout: Timeout(Duration(seconds: 5)),
    skip: 'websocket.org is not available anymore',
  );

  group(
    'magx websocket client tests',
    () {
      String? token1;
      String? token2;
      late MagxClient client1;
      late MagxClient client2;
      final activeConnections = <Room>[];

      setUp(() async {
        try {
          final uri = Uri.parse(testHostServer);
          client1 = MagxClient(
            MagxClientParams(address: uri.host, port: uri.port, secure: uri.scheme.contains('https')),
            tokenStorage: TokenStorage.delegate(() => token1, (value) => token1 = value),
          );
          client2 = MagxClient(
            MagxClientParams(address: uri.host, port: uri.port, secure: uri.scheme.contains('https')),
            tokenStorage: TokenStorage.delegate(() => token2, (value) => token2 = value),
          );
          final data1 = await client1.authenticateGuest(deviceId: Uuid().v4());
          final data2 = await client2.authenticateGuest(deviceId: Uuid().v4());
          token1 = data1.body?.token;
          token2 = data2.body?.token;
        } catch (_) {}
      });

      tearDown(() {
        token1 = null;
        token2 = null;
        activeConnections
          ..forEach((element) => element.dispose())
          ..clear();
      });

      test('creates room successfully', () async {
        final room = await client1.createAndConnect('chat');
        expect(room.isSuccessful, isTrue);
        if (room.body != null) {
          activeConnections.add(room.body!);
        }
        expectLater(room.body?.stream, emits(equals(Message.connected())));
      });

      test('can join room', () async {
        final room = await client1.createAndConnect('chat');
        expect(room.isSuccessful, isTrue);
        activeConnections.add(room.body!);
        expectLater(room.body!.stream, emits(equals(Message.connected())));
        final joinedRoom = await client2.connect(room.body!.id);
        activeConnections.add(joinedRoom!);
        expectLater(room.body!.stream, emits(equals(Message.connected())));
      });

      test('reconnects successfully', () async {
        final room = await client1.createAndConnect('mosx-chat');
        expect(room.isSuccessful, isTrue);
        room.body!.stream!.listen((message) => print('1: ${message.toString()}'));
        activeConnections.add(room.body!);
        expectLater(room.body!.stream, emits(equals(Message.connected())));
        final joinedRoom = await client2.connect(room.body!.id);
        expect(joinedRoom, isNotNull);
        joinedRoom!.dispose();

        await Future.delayed(Duration(seconds: 2));

        final reconnectedRoom = await client2.connect(room.body!.id);
        expect(reconnectedRoom, isNotNull);

        activeConnections.add(reconnectedRoom!);
        await expectLater(
          reconnectedRoom.stream,
          emitsThrough(anyOf(
            equals(Message.reconnected()),
            isNot(equals(Message.joined())),
          )),
        );
      });

      test('messaging in room successfully', () async {
        final createdRoom = await client1.createAndConnect('chat');
        expect(createdRoom.body, isNotNull);
        activeConnections.add(createdRoom.body!);
        createdRoom.body!.stream!.listen((message) => print('1: ${message.toString()}'));
        expectLater(
          createdRoom.body!.stream!.where(
            (event) =>
                [
                  MessageEvent.encodedSnapshot,
                  MessageEvent.snapshot,
                  MessageEvent.patch,
                  MessageEvent.encodedPatch,
                ].contains(event.event) ==
                false,
          ),
          emitsInOrder(
            [
              emits(equals(Message.connected())),
              emits(predicate<Message>(
                (message) => message.event == MessageEvent.message && (message.data[1] as String).contains('joined'),
              )),
              emits(predicate<Message>(
                (message) =>
                    message.event == MessageEvent.message && (message.data[1] as String).contains('test_message'),
              )),
              emits(predicate<Message>(
                (message) => message.event == MessageEvent.message && (message.data[1] as String).contains('left'),
              )),
            ],
          ),
        );

        final joinedRoom = await client2.connect(createdRoom.body!.id);
        expect(joinedRoom, isNotNull);
        activeConnections.add(joinedRoom!);
        joinedRoom.stream!.listen((message) => print('2: ${message.toString()}'));

        await Future.delayed(Duration(milliseconds: 400));
        joinedRoom.connection.send(Message.message(['message', 'test_message']));
        client2.leaveRoom(joinedRoom.id);
        client1.leaveRoom(joinedRoom.id);
      });

      test('receives snapshots and patches', () async {
        final createdRoom = await client1.createAndConnect('mosx-chat');
        expect(createdRoom.body, isNotNull);
        activeConnections.add(createdRoom.body!);
        createdRoom.body!.stream!.listen((message) => print('1: ${message.toString()}'));
        await Future.delayed(Duration(seconds: 2));
      });
    },
    skip: !(await integrationServerAvailable),
  );
}
