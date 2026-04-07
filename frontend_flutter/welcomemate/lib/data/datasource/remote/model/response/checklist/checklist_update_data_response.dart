import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_update_data_response.freezed.dart';
part 'checklist_update_data_response.g.dart';

@freezed
abstract class ChecklistUpdateDataResponse with _$ChecklistUpdateDataResponse {
  const factory ChecklistUpdateDataResponse({
    @JsonKey(name: 'ok') required bool ok,
    @JsonKey(name: 'completed') required bool completed,
  }) = _ChecklistUpdateDataResponse;

  factory ChecklistUpdateDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ChecklistUpdateDataResponseFromJson(json);
}
