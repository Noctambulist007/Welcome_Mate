import 'package:welcomemate/data/repository/source/remote/chat_remote_data_source.dart';
import 'package:welcomemate/domain/model/chat/chat.dart';
import 'package:welcomemate/domain/model/chat/chat_history.dart';
import 'package:welcomemate/domain/repository/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDataSource chatRemoteDataSource;

  ChatRepositoryImpl({required this.chatRemoteDataSource});

  @override
  Future<Chat> sendMessage({required String message}) async {
    var response = await chatRemoteDataSource.sendMessage(message: message);
    return response;
  }

  @override
  Future<List<ChatHistory>> getChatHistory({int page = 1}) async {
    var response = await chatRemoteDataSource.getChatHistory(page: page);
    return response;
  }
}
