import 'package:welcomemate/domain/model/community/comment.dart';

class Post {
  final String id;
  final String authorId;
  final String authorName;
  final String title;
  final String body;
  final String countryCode;
  final List<String>? tags;
  final int upvotesCount;
  final int commentsCount;
  final List<Comment> comments;
  final bool isUpvoted;
  final String createdAt;

  Post({
    required this.id,
    required this.authorId,
    required this.authorName,
    required this.title,
    required this.body,
    required this.countryCode,
    this.tags,
    required this.upvotesCount,
    required this.commentsCount,
    required this.comments,
    required this.isUpvoted,
    required this.createdAt,
  });
}
