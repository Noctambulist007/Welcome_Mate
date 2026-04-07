import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/career/career_item_data_response.dart';

part 'career_data_response.freezed.dart';
part 'career_data_response.g.dart';

@freezed
abstract class CareerDataResponse with _$CareerDataResponse {
  const factory CareerDataResponse({
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'next') required String? next,
    @JsonKey(name: 'previous') required String? previous,
    @JsonKey(name: 'results') List<CareerItemDataResponse>? results,
  }) = _CareerDataResponse;

  factory CareerDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CareerDataResponseFromJson(json);
}
