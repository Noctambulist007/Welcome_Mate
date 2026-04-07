import 'package:freezed_annotation/freezed_annotation.dart';

part 'career_item_data_response.freezed.dart';
part 'career_item_data_response.g.dart';

@freezed
abstract class CareerItemDataResponse with _$CareerItemDataResponse {
  const factory CareerItemDataResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body_markdown') required String bodyMarkdown,
    @JsonKey(name: 'country_code') required String countryCode,
    @JsonKey(name: 'tags')  List<String>? tags,
    @JsonKey(name: 'verified_at')  String? verifiedAt,
    @JsonKey(name: 'updated_at')  String? updatedAt,
  }) = _CareerItemDataResponse;

  factory CareerItemDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CareerItemDataResponseFromJson(json);
}
