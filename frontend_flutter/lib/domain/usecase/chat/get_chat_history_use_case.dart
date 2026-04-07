import 'package:welcomemate/domain/model/chat/chat_history.dart';
import 'package:welcomemate/domain/repository/chat_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class GetChatHistoryUseCase {
  final ChatRepository _chatRepository;

  GetChatHistoryUseCase({required ChatRepository chatRepository})
    : _chatRepository = chatRepository;

  Future<Result<List<ChatHistory>>> call({int page = 1}) async {
    return await _chatRepository
        .getChatHistory(page: page)
        .then((chatHistories) => Result.success(chatHistories))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
