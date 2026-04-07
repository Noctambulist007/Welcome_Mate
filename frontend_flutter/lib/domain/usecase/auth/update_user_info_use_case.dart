import 'dart:io';
import 'package:welcomemate/data/datasource/remote/model/request/auth/user_request.dart';
import 'package:welcomemate/domain/model/auth/user.dart';
import 'package:welcomemate/domain/repository/auth_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class UpdateUserInfoUseCase {
  final AuthRepository _authRepository;

  UpdateUserInfoUseCase({required AuthRepository authRepository})
    : _authRepository = authRepository;

  Future<Result<User>> call({
    required UserRequest requestBody,
    File? avatarFile,
  }) async {
    return await _authRepository
        .updateUserInfo(requestBody: requestBody, avatarFile: avatarFile)
        .then((user) => Result.success(user))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
