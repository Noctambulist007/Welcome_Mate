import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/presentation/screen/auth/notifier/auth_notifier.dart';
import 'package:welcomemate/presentation/screen/auth/state/auth_ui_state.dart';

typedef AuthNotifierProvider = StateNotifierProvider<AuthNotifier, AuthUiState>;

final AuthNotifierProvider authNotifierProvider = StateNotifierProvider(
  (ref) => AuthNotifier(),
);
