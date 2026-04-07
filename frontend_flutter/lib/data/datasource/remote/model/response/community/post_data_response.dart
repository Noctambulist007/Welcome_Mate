import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/community/comment_data_response.dart';

part 'post_data_response.freezed.dart';
part 'post_data_response.g.dart';

@freezed
abstract class PostDataResponse with _$PostDataResponse{
  const factory PostDataResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'author') required String author,
    @JsonKey(name: 'author_name') required String authorName,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'body') required String body,
    @JsonKey(name: 'country_code') required String countryCode,
    @JsonKey(name: 'tags')  List<String>? tags,
    @JsonKey(name: 'upvotes_count') required int upvotesCount,
    @JsonKey(name: 'comments_count') required int commentsCount,
    @JsonKey(name: 'comments') required  List<CommentDataResponse> comments,
    @JsonKey(name: 'is_upvoted') required bool isUpvoted,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _PostDataResponse;

  factory PostDataResponse.fromJson(Map<String, dynamic> json) =>
      _$PostDataResponseFromJson(json);
}
