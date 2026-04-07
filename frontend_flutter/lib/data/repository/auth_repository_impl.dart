import 'dart:io';
import 'package:welcomemate/data/datasource/remote/model/request/auth/login_request.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/register_request.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/user_request.dart';
import 'package:welcomemate/data/repository/source/local/auth_local_data_source.dart';
import 'package:welcomemate/data/repository/source/remote/auth_remote_data_source.dart';
import 'package:welcomemate/domain/model/auth/auth.dart';
import 'package:welcomemate/domain/model/auth/user.dart';
import 'package:welcomemate/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  AuthRepositoryImpl({
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
  });

  @override
  Future<Auth?> login({required LoginRequest requestBody}) async {
    var response = await authRemoteDataSource.login(requestBody: requestBody);
    await authLocalDataSource.saveAccessToken(response?.accessToken ?? '');
    await authLocalDataSource.saveRefreshToken(response?.refreshToken ?? '');
    return response;
  }

  @override
  Future<Auth?> register({required RegisterRequest requestBody}) async {
    var response = await authRemoteDataSource.register(
      requestBody: requestBody,
    );
    await authLocalDataSource.saveAccessToken(response?.accessToken ?? '');
    await authLocalDataSource.saveRefreshToken(response?.refreshToken ?? '');
    return response;
  }

  @override
  Future<User> getUserInfo() async {
    var response = await authRemoteDataSource.getUserInfo();
    return response;
  }

  @override
  Future<User> updateUserInfo({required UserRequest requestBody, File? avatarFile}) async {
    var response = await authRemoteDataSource.updateUserInfo(
      requestBody: requestBody,
      avatarFile: avatarFile,
    );
    return response;
  }
}
