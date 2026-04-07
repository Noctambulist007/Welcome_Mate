import 'package:welcomemate/data/datasource/remote/model/response/chat/chat_history_response.dart';
import 'package:welcomemate/data/mapper/chat/chat_history_response_mapper.dart';
import 'package:welcomemate/domain/model/chat/chat_history.dart';

extension ChatHistoryListResponseMapper on ChatHistoryResponse {
  List<ChatHistory> toChatHistoryList() {
    return data.results?.map((e) => e.toChatHistory()).toList() ?? [];
  }
}
