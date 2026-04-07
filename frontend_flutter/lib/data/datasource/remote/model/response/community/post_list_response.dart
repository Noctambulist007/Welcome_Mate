import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/community/post_list_data_response.dart';

part 'post_list_response.freezed.dart';
part 'post_list_response.g.dart';

@freezed
abstract class PostListResponse with _$PostListResponse {
  const factory PostListResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required PostListDataResponse data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _PostListResponse;

  factory PostListResponse.fromJson(Map<String, dynamic> json) =>
      _$PostListResponseFromJson(json);
}
