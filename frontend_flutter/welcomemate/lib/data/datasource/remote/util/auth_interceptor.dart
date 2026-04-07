import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:welcomemate/data/repository/source/local/auth_local_data_source.dart';

class AuthInterceptor extends Interceptor {
  final AuthLocalDataSource _authLocalDataSource;

  AuthInterceptor({required AuthLocalDataSource authLocalDataSource})
    : _authLocalDataSource = authLocalDataSource;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = _authLocalDataSource.getAccessToken();

    if (token.isNotEmpty) {
      try {
        Map<String, dynamic> decodedToken = JwtDecoder.decode(token);

        if (decodedToken.containsKey('id')) {
          final userId = decodedToken['id'].toString();
          await _authLocalDataSource.setAccountId(id: userId);
          debugPrint("Stored user ID from token: $userId");
        }
      } catch (e) {
        debugPrint("Error decoding token: $e");
      }

      options.headers['Authorization'] = 'Bearer $token';
      debugPrint("Added token to request headers");
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    debugPrint("status code = ${err.response?.statusCode}");
    debugPrint("error response data = ${err.response?.data}");

    if (err.response?.statusCode == 401) {
      try {
        debugPrint("Received 401 Unauthorized response");
      } catch (e) {
        debugPrint("Error clearing token: $e");
      }
    }

    return handler.next(err);
  }
}
