import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/presentation/screen/emergency/notifier/emergency_notifier.dart';
import 'package:welcomemate/presentation/screen/emergency/state/emergency_ui_state.dart';

typedef EmergencyNotifierProvider =
    StateNotifierProvider<EmergencyNotifier, EmergencyUiState>;

final EmergencyNotifierProvider emergencyNotifierProvider = StateNotifierProvider(
  (ref) => EmergencyNotifier(),
);

