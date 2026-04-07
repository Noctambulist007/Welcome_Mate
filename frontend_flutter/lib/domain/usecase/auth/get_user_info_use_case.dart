import 'package:welcomemate/domain/model/auth/user.dart';
import 'package:welcomemate/domain/repository/auth_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class GetUserInfoUseCase {
  final AuthRepository _authRepository;

  GetUserInfoUseCase({required AuthRepository authRepository})
    : _authRepository = authRepository;

  Future<Result<User>> call() async {
    return await _authRepository
        .getUserInfo()
        .then((user) => Result.success(user))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
