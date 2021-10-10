abstract class TokenStorage {
  String? get token;

  void save(String token);

  factory TokenStorage.delegate(TokenGetter getter, TokenSetter setter) => _DelegateTokenStorage(getter, setter);
}

typedef TokenGetter = String? Function();
typedef TokenSetter = void Function(String? token);

class _DelegateTokenStorage implements TokenStorage {
  final TokenGetter get;
  final TokenSetter set;

  _DelegateTokenStorage(this.get, this.set);

  @override
  void save(String token) => set(token);

  @override
  String? get token => get();
}

class MemoryTokenStorage implements TokenStorage {
  String? _token;

  MemoryTokenStorage();

  @override
  void save(String token) => _token = token;

  @override
  String? get token => _token;
}
