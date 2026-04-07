import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/domain/model/emergency/emergency.dart';

part 'emergency_ui_state.freezed.dart';

@freezed
class EmergencyUiState with _$EmergencyUiState {
  const factory EmergencyUiState.initial() = InitialState;

  const factory EmergencyUiState.loading() = LoadingState;

  const factory EmergencyUiState.success({List<Emergency>? emergencies, @Default(true) bool hasMore}) = SuccessState;


  const factory EmergencyUiState.error(String message) = ErrorState;
}
