import 'package:welcomemate/data/datasource/remote/api/chat_api.dart';
import 'package:welcomemate/data/datasource/remote/model/response/chat/chat_history_response.dart';
import 'package:welcomemate/data/datasource/remote/model/response/chat/chat_response.dart';
import 'package:welcomemate/data/datasource/remote/util/api_client.dart';
import 'package:welcomemate/data/mapper/chat/chat_history_list_response_mapper.dart';
import 'package:welcomemate/data/mapper/chat/chat_response_mapper.dart';
import 'package:welcomemate/domain/model/chat/chat.dart';
import 'package:welcomemate/domain/model/chat/chat_history.dart';

class ChatApiImpl extends ChatApi {
  final ApiClient _client;

  static const sendMessageUrl = 'chat';
  static const getChatHistoryUrl = 'chat/history';

  ChatApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<Chat> sendMessage({required String message}) async {
    try {
      final response = await _client.post<JSONObject, ChatResponse>(
        path: sendMessageUrl,
        data: {'message': message},
        converter: (json) {
          return ChatResponse.fromJson(json);
        },
      );
      return response.data.toChat();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<ChatHistory>> getChatHistory({int page = 1}) async {
    try {
      final response = await _client.get<JSONObject, ChatHistoryResponse>(
        path: getChatHistoryUrl,
        queryParameters: {'page': page.toString()},
        converter: (json) {
          return ChatHistoryResponse.fromJson(json);
        },
      );
      return response.toChatHistoryList();
    } catch (e) {
      rethrow;
    }
  }
}
