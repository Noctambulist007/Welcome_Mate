class ChatHistory {
  final String id;
  final String userId;
  final String message;
  final String botReply;
  final String createdAt;

  ChatHistory({
    required this.id,
    required this.userId,
    required this.message,
    required this.botReply,
    required this.createdAt,
  });
}