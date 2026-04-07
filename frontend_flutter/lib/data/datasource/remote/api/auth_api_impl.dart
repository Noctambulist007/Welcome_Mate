import 'dart:io';

import 'package:dio/dio.dart';
import 'package:welcomemate/data/datasource/remote/api/auth_api.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/login_request.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/register_request.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/user_request.dart';
import 'package:welcomemate/data/datasource/remote/model/response/auth/auth_response.dart';
import 'package:welcomemate/data/datasource/remote/model/response/auth/user_response.dart';
import 'package:welcomemate/data/datasource/remote/util/api_client.dart';
import 'package:welcomemate/data/mapper/auth/auth_response_mapper.dart';
import 'package:welcomemate/data/mapper/auth/user_response_mapper.dart';
import 'package:welcomemate/domain/model/auth/auth.dart';
import 'package:welcomemate/domain/model/auth/user.dart';

class AuthApiImpl extends AuthApi {
  final ApiClient _client;

  static const loginUrl = 'auth/login';
  static const registerUrl = 'auth/signup';
  static const getUserInfoUrl = 'users/me';
  static const updateUserInfoUrl = 'users/me';

  AuthApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<Auth?> login({required LoginRequest requestBody}) async {
    try {
      final response = await _client.post<JSONObject, AuthResponse>(
        path: loginUrl,
        data: requestBody.toJson(),
        converter: (json) {
          return AuthResponse.fromJson(json);
        },
      );
      return response.data?.toAuth();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Auth?> register({required RegisterRequest requestBody}) async {
    try {
      final response = await _client.post<JSONObject, AuthResponse>(
        path: registerUrl,
        data: requestBody.toJson(),
        converter: (json) {
          return AuthResponse.fromJson(json);
        },
      );
      return response.data?.toAuth();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User> getUserInfo() async {
    try {
      final response = await _client.get<JSONObject, UserResponse>(
        path: getUserInfoUrl,
        converter: (json) {
          return UserResponse.fromJson(json);
        },
      );
      return response.data.toUser();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User> updateUserInfo({
    required UserRequest requestBody,
    File? avatarFile,
  }) async {
    try {
      if (avatarFile != null) {
        final Map<String, dynamic> data = requestBody.toJson();
        data.removeWhere((key, value) => value == null);

        final formData = FormData.fromMap(data);

        final fileName = avatarFile.path.split('/').last;
        formData.files.add(
          MapEntry(
            'avatar',
            await MultipartFile.fromFile(avatarFile.path, filename: fileName),
          ),
        );
        final response = await _client.patch<JSONObject, UserResponse>(
          path: updateUserInfoUrl,
          data: formData,
          options: Options(contentType: 'multipart/form-data'),
          converter: (json) {
            return UserResponse.fromJson(json);
          },
        );
        return response.data.toUser();
      } else {
        final response = await _client.patch<JSONObject, UserResponse>(
          path: updateUserInfoUrl,
          data: requestBody.toJson(),
          converter: (json) {
            return UserResponse.fromJson(json);
          },
        );
        return response.data.toUser();
      }
    } catch (e) {
      rethrow;
    }
  }
}
