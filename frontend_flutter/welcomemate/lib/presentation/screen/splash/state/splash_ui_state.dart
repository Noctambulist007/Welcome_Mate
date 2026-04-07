import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_ui_state.freezed.dart';

@freezed
class SplashUiState with _$SplashUiState {
  const factory SplashUiState.initial() = _Initial;
  const factory SplashUiState.loading() = _Loading;
  const factory SplashUiState.authenticated() = _Authenticated;
  const factory SplashUiState.unauthenticated() = _Unauthenticated;
  const factory SplashUiState.onboarding() = _Onboarding;
}