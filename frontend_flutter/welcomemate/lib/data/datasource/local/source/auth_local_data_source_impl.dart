import 'package:shared_preferences/shared_preferences.dart';
import 'package:welcomemate/data/repository/source/local/auth_local_data_source.dart';

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final SharedPreferences _sharedPref;

  static const _accessToken = 'access';
  static const _refreshToken = 'refresh';

  AuthLocalDataSourceImpl({required SharedPreferences sharedPref})
    : _sharedPref = sharedPref;

  @override
  String getAccessToken() {
    final token = _sharedPref.getString(_accessToken) ?? '';
    print('AuthLocalDataSource: getAccessToken: $token');
    return token;
  }

  @override
  Future<void> saveAccessToken(String token) async {
    print('AuthLocalDataSource: saveAccessToken: $token');
    await _sharedPref.setString(_accessToken, token);
  }

  @override
  String getRefreshToken() {
    final token = _sharedPref.getString(_refreshToken) ?? '';
    print('AuthLocalDataSource: getRefreshToken: $token');
    return token;
  }

  @override
  Future<void> saveRefreshToken(String token) async {
    print('AuthLocalDataSource: saveRefreshToken: $token');
    await _sharedPref.setString(_refreshToken, token);
  }

  @override
  Future<void> clearTokens() async {
    await _sharedPref.remove(_accessToken);
    await _sharedPref.remove(_refreshToken);
    await _sharedPref.remove('account_id');
  }

  @override
  Future<void> setToken({required String token}) async {
    _sharedPref.setString(_accessToken, token);
  }

  @override
  String? getAccountId() {
    print('Getting account ID ${_sharedPref.getString('account_id')}');
    return _sharedPref.getString('account_id');
  }

  @override
  Future<void> setAccountId({required String id}) async {
    print('Setting account ID: $id');
    await _sharedPref.setString('account_id', id);
  }

  @override
  Future<void> clearAccessToken() async {
    await _sharedPref.remove(_accessToken);
  }
}
