import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_request.freezed.dart';
part 'post_request.g.dart';

@freezed
abstract class PostRequest with _$PostRequest {
  const factory PostRequest({
    @JsonKey(name: 'title', includeIfNull: false) required String title,
    @JsonKey(name: 'body', includeIfNull: false) required String body,
    @JsonKey(name: 'country_code', includeIfNull: false) required String countryCode,
    @JsonKey(name: 'tags', includeIfNull: false) List<String>? tags,
  }) = _PostRequest;

  factory PostRequest.fromJson(Map<String, dynamic> json) =>
      _$PostRequestFromJson(json);
}
