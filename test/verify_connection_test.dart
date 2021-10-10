import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:magx_client/src/client.dart';
import 'package:test/test.dart';

void main() async {
  late MagxClient client;

  setUp(() {
    client = MagxClient(MagxClientParams(
      address: 'durakgame.herokuapp.com',
      secure: true,
    ));
  });

  final testHostServer =
      Platform.environment['TEST_HOST_SERVER'] ?? 'http://localhost:3030';
  Future<bool> checkReady() async {
    return http.Client()
        .get(Uri.parse('$testHostServer/magx/'))
        .then((value) => value.statusCode == 200)
        .catchError((_) => false);
  }

  var canTestWebsocketClient = await checkReady();

  group('authenticates with valid response body', () {
    void authenticate(String address) {
      test('authenticates at: $address', () async {
        final response = await client.api.post(
          'https://$address/magx/auth',
          body: {
            'data': {'type': 'guest', 'deviceId': 'chopper'}
          },
        );
        expect(response.statusCode, equals(200));
      });
    }

    authenticate('durakgame.herokuapp.com');
  }, skip: !canTestWebsocketClient);

  group('verifies token with valid response body', () {
    void verify(String address) {
      test('verifies at: $address', () async {
        final response = await client.api.get(
          'https://$address/magx/auth/'
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI1ZmRjY2M0NDJmMjI5YzAwMTcwNzc0NzciLCJpc3MiOiJkdXJha2dhbWUiLCJpYXQiOjE2MDgzMDU3MzIsImV4cCI6MTYxMjYyNTczMn0.L_87ZBHpqJjZCwvEOIv3AIqCM49_TW5llUlN_t13784',
        );
        expect(response.statusCode, anyOf(equals(200), equals(404)));
        if (response.statusCode == 200) {
          expect(response.body, isNotNull);
          expect(response.body, isNotEmpty);
        }
      });
    }

    verify('durakgame.herokuapp.com');
  }, skip: !canTestWebsocketClient);
}
