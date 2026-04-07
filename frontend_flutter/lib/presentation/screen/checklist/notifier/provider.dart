import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/presentation/screen/checklist/notifier/checklist_notifier.dart';
import 'package:welcomemate/presentation/screen/checklist/state/checklist_ui_state.dart';

typedef ChecklistNotifierProvider =
    StateNotifierProvider<ChecklistNotifier, ChecklistUiState>;

final ChecklistNotifierProvider checklistNotifierProvider = StateNotifierProvider(
  (ref) => ChecklistNotifier(),
);
