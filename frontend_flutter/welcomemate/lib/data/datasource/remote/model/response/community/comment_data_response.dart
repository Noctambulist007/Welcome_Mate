import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_data_response.freezed.dart';
part 'comment_data_response.g.dart';

@freezed
abstract class CommentDataResponse with _$CommentDataResponse{
  const factory CommentDataResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'post') required String post,
    @JsonKey(name: 'author') required String author,
    @JsonKey(name: 'author_name') required String authorName,
    @JsonKey(name: 'body') required String body,
    @JsonKey(name: 'parent_comment') String? parentComment,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _CommentDataResponse;

  factory CommentDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentDataResponseFromJson(json);
}
