import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/community/comment_data_response.dart';

part 'comment_response.freezed.dart';
part 'comment_response.g.dart';

@freezed
abstract class CommentResponse with _$CommentResponse {
  const factory CommentResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required CommentDataResponse data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _CommentResponse;

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentResponseFromJson(json);
}
