import 'package:welcomemate/data/datasource/remote/model/response/community/comment_data_response.dart';
import 'package:welcomemate/domain/model/community/comment.dart';

extension CommentResponseMapper on CommentDataResponse {
  Comment toComment() {
    return Comment(
      id: id,
      postId: post,
      authorId: author,
      authorName: authorName,
      body: body,
      parentCommentId: parentComment,
      createdAt: createdAt,
    );
  }
}
