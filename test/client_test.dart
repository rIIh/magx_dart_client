import 'package:http/http.dart' as http;
import 'package:magx_client/src/client.dart';
import 'package:magx_client/src/token_storage.dart';
import 'package:test/test.dart';

import 'mock/valid_http_client.dart';

void main() {
  http.Client client;
  MagxClient magxClient;
  TokenStorage tokenStorage;
  String token;

  setUp(() {
    client = ValidHttpClient();
    tokenStorage = TokenStorage.delegate(() => token, (value) => token = value);
    magxClient = MagxClient(
      MagxClientParams(
        address: 'localhost',
        port: 8888,
      ),
      tokenStorage: tokenStorage,
      client: client,
    );
  });

  test('client authenticates', () async {
    final response = await magxClient.authenticateGuest(deviceId: 'random_id');
    expect(response.isSuccessful, isTrue);
    final body = response.body;
    expect(body.id, equals('5fdc98658804d60017bfbe05'));
    expect(body.token, equals('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9'));
    expect(body.data, equals({}));
  });

  test('client verifies', () async {
    tokenStorage.save('random_token');
    final response = await magxClient.verify();
    expect(response.isSuccessful, isTrue);
    final body = response.body;
    expect(body.token, equals('random_token'));
  });
}
