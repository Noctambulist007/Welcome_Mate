import 'dart:io';
import 'package:welcomemate/data/datasource/remote/model/request/auth/login_request.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/register_request.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/user_request.dart';
import 'package:welcomemate/domain/model/auth/auth.dart';
import 'package:welcomemate/domain/model/auth/user.dart';

abstract class AuthRepository {
  // login
  Future<Auth?> login({required LoginRequest requestBody});

  // register
  Future<Auth?> register({required RegisterRequest requestBody});

  // logout

  // get user info
  Future<User> getUserInfo();

  // update user info
  Future<User> updateUserInfo({required UserRequest requestBody, File? avatarFile});
}
