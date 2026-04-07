import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/checklist/checklist_update_data_response.dart';

part 'checklist_update_response.freezed.dart';
part 'checklist_update_response.g.dart';

@freezed
abstract class ChecklistUpdateResponse with _$ChecklistUpdateResponse {
  const factory ChecklistUpdateResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required ChecklistUpdateDataResponse data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _ChecklistUpdateResponse;

  factory ChecklistUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$ChecklistUpdateResponseFromJson(json);
}