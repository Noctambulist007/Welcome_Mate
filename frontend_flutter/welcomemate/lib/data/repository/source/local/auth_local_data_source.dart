abstract class AuthLocalDataSource {
  String getAccessToken();

  Future<void> saveAccessToken(String token);

  String getRefreshToken();

  Future<void> saveRefreshToken(String token);

  Future<void> clearTokens();

  Future<void> clearAccessToken();

  Future<void> setToken({required String token});

  String? getAccountId();

  Future<void> setAccountId({required String id});
}
