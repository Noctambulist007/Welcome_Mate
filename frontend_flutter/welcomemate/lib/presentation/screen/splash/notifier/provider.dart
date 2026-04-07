import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/injection_container.dart';
import 'package:welcomemate/presentation/screen/splash/notifier/splash_notifier.dart';
import 'package:welcomemate/presentation/screen/splash/state/splash_ui_state.dart';

typedef SplashNotifierProvider =
StateNotifierProvider<SplashNotifier, SplashUiState>;

final SplashNotifierProvider splashNotifierProvider = StateNotifierProvider(
      (ref) => SplashNotifier(),
);

