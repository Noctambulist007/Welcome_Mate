import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/domain/usecase/auth/check_auth_status_use_case.dart';
import 'package:welcomemate/domain/usecase/onboarding/check_onboarding_status_use_case.dart';
import 'package:welcomemate/injection_container.dart';
import 'package:welcomemate/presentation/screen/splash/state/splash_ui_state.dart';

class SplashNotifier extends StateNotifier<SplashUiState> {
  SplashNotifier() : super(const SplashUiState.loading()) {
    checkAuthStatus();
  }

  Future<void> checkAuthStatus() async {
    state = const SplashUiState.loading();
    final checkAuthStatusUseCase = getIt<CheckAuthStatusUseCase>();
    final checkOnboardingStatusUseCase = getIt<CheckOnboardingStatusUseCase>();

    final isAuthenticated = await checkAuthStatusUseCase();
    print('SplashNotifier: isAuthenticated: $isAuthenticated');
    if (isAuthenticated) {
      state = const SplashUiState.authenticated();
    } else {
      final isOnboardingSeen = await checkOnboardingStatusUseCase();
      if (isOnboardingSeen) {
        state = const SplashUiState.unauthenticated();
      } else {
        state = const SplashUiState.onboarding();
      }
    }
  }
}
