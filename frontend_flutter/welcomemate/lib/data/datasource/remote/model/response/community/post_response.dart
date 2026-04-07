import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/community/post_data_response.dart';

part 'post_response.freezed.dart';
part 'post_response.g.dart';

@freezed
abstract class PostResponse with _$PostResponse {
  const factory PostResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required PostDataResponse data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _PostResponse;

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);
}