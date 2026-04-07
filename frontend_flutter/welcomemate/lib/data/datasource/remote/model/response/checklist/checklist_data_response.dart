import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/checklist/checklist_item_data_response.dart';

part 'checklist_data_response.freezed.dart';
part 'checklist_data_response.g.dart';

@freezed
abstract class ChecklistDataResponse with _$ChecklistDataResponse {
  const factory ChecklistDataResponse({
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'next') required String? next,
    @JsonKey(name: 'previous') required String? previous,
    @JsonKey(name: 'results')  List<ChecklistItemDataResponse>? results,
  }) = _ChecklistDataResponse;

  factory ChecklistDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ChecklistDataResponseFromJson(json);
}
