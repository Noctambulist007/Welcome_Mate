import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/checklist/checklist_data_response.dart';

part 'checklist_response.freezed.dart';
part 'checklist_response.g.dart';

@freezed
abstract class ChecklistResponse with _$ChecklistResponse {
  const factory ChecklistResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required ChecklistDataResponse data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _ChecklistResponse;

  factory ChecklistResponse.fromJson(Map<String, dynamic> json) =>
      _$ChecklistResponseFromJson(json);
}