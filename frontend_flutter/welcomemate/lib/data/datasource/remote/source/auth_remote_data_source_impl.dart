import 'dart:io';
import 'package:welcomemate/data/datasource/remote/api/auth_api.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/login_request.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/register_request.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/user_request.dart';
import 'package:welcomemate/data/repository/source/remote/auth_remote_data_source.dart';
import 'package:welcomemate/domain/model/auth/auth.dart';
import 'package:welcomemate/domain/model/auth/user.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final AuthApi _authApi;

  AuthRemoteDataSourceImpl({required AuthApi authApi}) : _authApi = authApi;

  @override
  Future<Auth?> login({required LoginRequest requestBody}) async {
    var response = await _authApi.login(requestBody: requestBody);
    return response;
  }

  @override
  Future<Auth?> register({required RegisterRequest requestBody}) async {
    var response = await _authApi.register(requestBody: requestBody);
    return response;
  }

  @override
  Future<User> getUserInfo() async {
    var response = await _authApi.getUserInfo();
    return response;
  }

  @override
  Future<User> updateUserInfo({required UserRequest requestBody, File? avatarFile}) async {
    var response = await _authApi.updateUserInfo(
      requestBody: requestBody,
      avatarFile: avatarFile,
    );
    return response;
  }
}
