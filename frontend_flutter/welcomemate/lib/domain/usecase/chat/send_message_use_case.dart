import 'package:welcomemate/domain/model/chat/chat.dart';
import 'package:welcomemate/domain/repository/chat_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class SendMessageUseCase {
  final ChatRepository _chatRepository;

  SendMessageUseCase({required ChatRepository chatRepository})
    : _chatRepository = chatRepository;

  Future<Result<Chat>> call({
    required String message,
}) async {
    return await _chatRepository
        .sendMessage(message: message)
        .then((chat) => Result.success(chat))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
