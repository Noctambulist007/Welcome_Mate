import 'package:welcomemate/domain/model/chat/chat.dart';
import 'package:welcomemate/domain/model/chat/chat_history.dart';

abstract class ChatRemoteDataSource {
  Future<Chat> sendMessage({required String message});

  Future<List<ChatHistory>> getChatHistory({int page = 1});
}
