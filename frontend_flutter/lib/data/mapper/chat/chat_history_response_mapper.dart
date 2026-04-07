import 'package:welcomemate/data/datasource/remote/model/response/chat/chat_history_item_data_response.dart';
import 'package:welcomemate/domain/model/chat/chat_history.dart';

extension ChatHistoryResponseMapper on ChatHistoryItemDataResponse {
  ChatHistory toChatHistory() {
    return ChatHistory(
      id: id,
      userId: user,
      message: message,
      botReply: botReply,
      createdAt: createdAt,
    );
  }
}
