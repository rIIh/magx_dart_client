import 'dart:io';

import 'package:http/http.dart';

final testHostServer = Platform.environment['TEST_HOST_SERVER'] ?? 'http://localhost:3030';
Future<bool> get integrationServerAvailable async {
  return Client()
      .get(Uri.parse('$testHostServer/magx/'))
      .then((value) => value.statusCode == 200)
      .catchError((_) => false);
}
