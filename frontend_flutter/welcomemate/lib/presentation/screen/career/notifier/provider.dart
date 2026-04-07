import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/presentation/screen/career/notifier/career_notifier.dart';
import 'package:welcomemate/presentation/screen/career/state/career_ui_state.dart';

typedef CareerNotifierProvider =
    StateNotifierProvider<CareerNotifier, CareerUiState>;

final CareerNotifierProvider careerNotifierProvider = StateNotifierProvider(
  (ref) => CareerNotifier(),
);
