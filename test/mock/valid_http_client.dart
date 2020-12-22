import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:magx_client/src/common/string_match.dart';
import 'package:match/match.dart';
import 'package:mockito/mockito.dart';

class ValidHttpClient extends Fake implements http.Client {
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    switch (request.method.toUpperCase()) {
      case 'POST':
        {
          return request.url.path.match({
            startsWith('/magx/auth'): () => authenticate(request),
          });
        }
      case 'GET':
        {
          return request.url.path.match({
            startsWith('/magx/auth/'): () => verify(request),
          });
        }
    }
  }

  Future<http.StreamedResponse> authenticate(http.BaseRequest request) => streamed(http.Response('''
    {
      "id":"5fdc98658804d60017bfbe05",
      "token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9",
      "data":{}
    }
  ''', 200));

  Future<http.StreamedResponse> verify(http.BaseRequest request) => streamed(http.Response('''
    {
      "id":"5fdc98658804d60017bfbe05",
      "token": "${request.url.pathSegments.last}",
      "data":{}
    }
  ''', 200));

  Future<http.StreamedResponse> streamed(http.Response response) async => http.StreamedResponse(
        Stream.value(utf8.encode(response.body)),
        response.statusCode,
      );
}
