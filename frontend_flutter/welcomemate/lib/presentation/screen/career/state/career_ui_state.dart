import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/domain/model/career/career.dart';

part 'career_ui_state.freezed.dart';

@freezed
class CareerUiState with _$CareerUiState {
  const factory CareerUiState.initial() = InitialState;

  const factory CareerUiState.loading() = LoadingState;

  const factory CareerUiState.success({List<Career>? careers, @Default(true) bool hasMore}) = SuccessState;


  const factory CareerUiState.error(String message) = ErrorState;
}
