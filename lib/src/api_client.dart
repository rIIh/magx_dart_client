import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as http;

import 'service.dart';
import 'token_storage.dart';

class MagxApiClient extends ChopperClient {
  TokenStorage tokenProvider;

  MagxService get service => getService();

  MagxApiClient._({
    String baseUrl = '',
    http.Client client,
    Iterable interceptors = const [],
    Converter converter,
    ErrorConverter errorConverter,
    Iterable<ChopperService> services = const [],
    this.tokenProvider,
  }) : super(
          baseUrl: baseUrl,
          services: services,
          client: client,
          converter: converter,
          errorConverter: errorConverter,
          interceptors: interceptors,
        );

  factory MagxApiClient.create({
    String baseUrl,
    TokenStorage tokenStorage,
    http.Client client,
    Iterable interceptors = const [],
  }) =>
      MagxApiClient._(
        baseUrl: baseUrl,
        services: [
          MagxService(),
        ],
        client: client,
        tokenProvider: tokenStorage,
        converter: JsonConverter(),
        errorConverter: JsonConverter(),
        interceptors: [
          (Request request) {
            if (tokenStorage != null && tokenStorage.token?.isNotEmpty == true) {
              return applyHeader(request, 'Authorization', tokenStorage.token);
            }
            return request;
          },
          ...(interceptors ?? const []),
        ],
      );
}
