import 'package:freezed_annotation/freezed_annotation.dart';

part 'checklist_sub_item_data_response.freezed.dart';
part 'checklist_sub_item_data_response.g.dart';

@freezed
abstract class ChecklistSubItemDataResponse with _$ChecklistSubItemDataResponse {
  const factory ChecklistSubItemDataResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description')  String? description,
    @JsonKey(name: 'required_docs') List<String>? requiredDocs,
    @JsonKey(name: 'order') required int order,
    @JsonKey(name: 'is_completed') required bool isCompleted,
  }) = _ChecklistSubItemDataResponse;

  factory ChecklistSubItemDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ChecklistSubItemDataResponseFromJson(json);
}
