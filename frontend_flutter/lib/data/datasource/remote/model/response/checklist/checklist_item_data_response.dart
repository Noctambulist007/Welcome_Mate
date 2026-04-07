import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/checklist/checklist_sub_item_data_response.dart';

part 'checklist_item_data_response.freezed.dart';
part 'checklist_item_data_response.g.dart';

@freezed
abstract class ChecklistItemDataResponse with _$ChecklistItemDataResponse {
  const factory ChecklistItemDataResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'slug') required String slug,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'country_code') required String countryCode,
    @JsonKey(name: 'stage') required String stage,
    @JsonKey(name: 'order') required int order,
    @JsonKey(name: 'items')  List<ChecklistSubItemDataResponse>? items,

  }) = _ChecklistItemDataResponse;

  factory ChecklistItemDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ChecklistItemDataResponseFromJson(json);
}
