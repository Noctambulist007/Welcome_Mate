import 'package:welcomemate/data/datasource/remote/api/chat_api.dart';
import 'package:welcomemate/data/repository/source/remote/chat_remote_data_source.dart';
import 'package:welcomemate/domain/model/chat/chat.dart';
import 'package:welcomemate/domain/model/chat/chat_history.dart';

class ChatRemoteDataSourceImpl extends ChatRemoteDataSource {
  final ChatApi _chatApi;

  ChatRemoteDataSourceImpl({required ChatApi chatApi}) : _chatApi = chatApi;

  @override
  Future<Chat> sendMessage({required String message}) async {
    var response = await _chatApi.sendMessage(message: message);
    return response;
  }

  @override
  Future<List<ChatHistory>> getChatHistory({int page = 1}) async {
    var response = await _chatApi.getChatHistory(page: page);
    return response;
  }
}
