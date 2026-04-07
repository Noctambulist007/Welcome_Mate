import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/data/repository/source/local/auth_local_data_source.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/login_request.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/register_request.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/user_request.dart';
import 'package:welcomemate/domain/usecase/auth/get_user_info_use_case.dart';
import 'package:welcomemate/domain/usecase/auth/login_use_case.dart';
import 'package:welcomemate/domain/usecase/auth/register_use_case.dart';
import 'package:welcomemate/domain/usecase/auth/update_user_info_use_case.dart';
import 'package:welcomemate/injection_container.dart';
import 'package:welcomemate/presentation/screen/auth/state/auth_ui_state.dart';

class AuthNotifier extends StateNotifier<AuthUiState> {
  AuthNotifier() : super(const AuthUiState.initial());

  Future<void> login({required LoginRequest requestBody}) async {
    state = const AuthUiState.loading();

    final useCase = getIt<LoginUseCase>();
    final result = await useCase(requestBody: requestBody);

    state = result.when(
      success: (auth) {
        return AuthUiState.success(auth: auth);
      },
      failure: (failure) {
        return AuthUiState.error(failure.message);
      },
    );

    await result.maybeWhen(
      success: (_) => getUserInfo(),
      orElse: () => Future.value(),
    );
  }

  Future<void> register({required RegisterRequest requestBody}) async {
    state = const AuthUiState.loading();

    final useCase = getIt<RegisterUseCase>();
    final result = await useCase(requestBody: requestBody);

    state = result.when(
      success: (auth) {
        return AuthUiState.success(auth: auth);
      },
      failure: (failure) {
        return AuthUiState.error(failure.message);
      },
    );

    await result.maybeWhen(
      success: (_) => getUserInfo(),
      orElse: () => Future.value(),
    );
  }

  Future<void> getUserInfo() async {
    state = const AuthUiState.loading();

    final useCase = getIt<GetUserInfoUseCase>();
    final result = await useCase();

    state = result.when(
      success: (user) {
        return AuthUiState.successUserInfo(user: user);
      },
      failure: (failure) {
        return AuthUiState.error(failure.message);
      },
    );
  }

  Future<void> updateUserInfo({required UserRequest requestBody, File? avatarFile}) async {
    state = const AuthUiState.loading();

    final useCase = getIt<UpdateUserInfoUseCase>();
    final result = await useCase(requestBody: requestBody, avatarFile: avatarFile);

    state = result.when(
      success: (user) {
        return AuthUiState.successUserInfo(user: user);
      },
      failure: (failure) {
        return AuthUiState.error(failure.message);
      },
    );
  }

  Future<void> logout() async {
    final authLocalDataSource = getIt<AuthLocalDataSource>();
    await authLocalDataSource.clearTokens();
    state = const AuthUiState.initial();
  }
}
