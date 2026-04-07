import 'package:welcomemate/data/datasource/remote/model/request/auth/login_request.dart';
import 'package:welcomemate/domain/model/auth/auth.dart';
import 'package:welcomemate/domain/repository/auth_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class LoginUseCase {
  final AuthRepository _authRepository;

  LoginUseCase({required AuthRepository authRepository})
    : _authRepository = authRepository;

  Future<Result<Auth?>> call({required LoginRequest requestBody}) async {
    return await _authRepository
        .login(requestBody: requestBody)
        .then((auth) => Result.success(auth))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
