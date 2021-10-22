import 'package:magx_client/src/client.dart';
import 'package:magx_client/src/room/room_description.dart';
import 'package:magx_client/src/token_storage.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'mock/check_integration_target.dart';

void main() async {
  group(
    'rest api client test',
    () {
      String? token1;
      MagxClient? client;

      setUp(() async {
        try {
          final uri = Uri.parse(testHostServer);
          client = MagxClient(
            MagxClientParams(address: uri.host, port: uri.port, secure: uri.scheme.contains('https')),
            tokenStorage: TokenStorage.delegate(() => token1, (value) => token1 = value),
          );

          final data1 = await client!.authenticateGuest(deviceId: Uuid().v4());
          token1 = data1.body?.token;
        } catch (_) {}
      });

      tearDown(() {
        client = null;
        token1 = null;
      });

      test('client authenticates', () async {
        final response = await client!.authenticateGuest(deviceId: 'random_id');
        expect(response.isSuccessful, isTrue);
      });

      test('client verifies', () async {
        client!.authenticateGuest(deviceId: 'random_device');
        final response = await client!.verify();
        expect(response.isSuccessful, isTrue);
      });

      test('get rooms', () async {
        final room1 = await client!.create('chat');
        final rooms = await client!.getRooms(['chat']);
        expect(rooms.isSuccessful, isTrue);
        expect(rooms.body, hasLength(1));
        expect(rooms.body!.first, isA<RoomDescription>());
        expect(rooms.body!.first.id, equals(room1.body!.id));
      });
    },
    skip: !(await integrationServerAvailable),
  );
}
