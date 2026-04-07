import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/guide/guide_item_data_response.dart';

part 'guide_data_response.freezed.dart';

part 'guide_data_response.g.dart';

@freezed
abstract class GuideDataResponse with _$GuideDataResponse {
  const factory GuideDataResponse({
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'next') required String? next,
    @JsonKey(name: 'previous') required String? previous,
    @JsonKey(name: 'results') List<GuideItemDataResponse>? results,
  }) = _GuideDataResponse;

  factory GuideDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GuideDataResponseFromJson(json);
}
