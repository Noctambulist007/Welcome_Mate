import 'package:welcomemate/data/datasource/remote/model/response/community/post_data_response.dart';
import 'package:welcomemate/data/mapper/community/comment_response_mapper.dart';
import 'package:welcomemate/domain/model/community/post.dart';

extension PostResponseMapper on PostDataResponse {
  Post toPost() {
    return Post(
      id: id,
      authorId: author,
      authorName: authorName,
      title: title,
      body: body,
      countryCode: countryCode,
      tags: tags,
      upvotesCount: upvotesCount,
      commentsCount: commentsCount,
      comments: comments.map((e) => e.toComment()).toList(),
      isUpvoted: isUpvoted,
      createdAt: createdAt,
    );
  }
}
