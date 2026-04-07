import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/presentation/screen/guide/notifier/guide_notifier.dart';
import 'package:welcomemate/presentation/screen/guide/state/guide_ui_state.dart';

typedef GuideNotifierProvider =
    StateNotifierProvider<GuideNotifier, GuideUiState>;

final GuideNotifierProvider guideNotifierProvider = StateNotifierProvider(
  (ref) => GuideNotifier(),
);
