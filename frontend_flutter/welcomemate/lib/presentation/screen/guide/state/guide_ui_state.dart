import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/domain/model/guide/guide.dart';

part 'guide_ui_state.freezed.dart';

@freezed
class GuideUiState with _$GuideUiState {
  const factory GuideUiState.initial() = InitialState;

  const factory GuideUiState.loading() = LoadingState;

  const factory GuideUiState.success({List<Guide>? guides, @Default(true) bool hasMore}) = SuccessState;


  const factory GuideUiState.error(String message) = ErrorState;
}
