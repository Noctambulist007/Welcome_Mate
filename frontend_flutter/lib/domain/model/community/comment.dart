class Comment {
  final String id;
  final String postId;
  final String authorId;
  final String authorName;
  final String body;
  final String? parentCommentId;
  final String createdAt;

  Comment({
    required this.id,
    required this.postId,
    required this.authorId,
    required this.authorName,
    required this.body,
    this.parentCommentId,
    required this.createdAt,
  });
}