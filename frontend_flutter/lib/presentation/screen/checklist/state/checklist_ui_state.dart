import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/domain/model/checklist/checklist.dart';
import 'package:welcomemate/domain/model/checklist/checklist_update.dart';

part 'checklist_ui_state.freezed.dart';

@freezed
class ChecklistUiState with _$ChecklistUiState {
  const factory ChecklistUiState.initial() = InitialState;

  const factory ChecklistUiState.loading() = LoadingState;

  const factory ChecklistUiState.successChecklistUpdate({required ChecklistUpdate checklistUpdate}) = SuccessChecklistUpdateState;

  const factory ChecklistUiState.successChecklists({List<Checklist>? checklists, @Default(true) bool hasMore}) = SuccessChecklistsState;


  const factory ChecklistUiState.error(String message) = ErrorState;
}
