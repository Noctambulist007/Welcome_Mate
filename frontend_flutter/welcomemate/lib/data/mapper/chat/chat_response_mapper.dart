import 'package:welcomemate/data/datasource/remote/model/response/chat/chat_data_response.dart';
import 'package:welcomemate/domain/model/chat/chat.dart';

extension ChatResponseMapper on ChatDataResponse {
  Chat toChat() {
    return Chat(replyText: replyText);
  }
}
