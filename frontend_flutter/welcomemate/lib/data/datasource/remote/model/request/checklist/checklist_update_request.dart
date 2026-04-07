import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_update_request.freezed.dart';
part 'checklist_update_request.g.dart';

@freezed
abstract class ChecklistUpdateRequest with _$ChecklistUpdateRequest {
  const factory ChecklistUpdateRequest({
    @JsonKey(name: 'itemId') required String itemId,
    @JsonKey(name: 'completed') required bool completed,
  }) = _ChecklistUpdateRequest;

  factory ChecklistUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ChecklistUpdateRequestFromJson(json);
}
