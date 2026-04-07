import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/domain/model/chat/chat.dart';
import 'package:welcomemate/domain/model/chat/chat_history.dart';

part 'chat_ui_state.freezed.dart';

@freezed
class ChatUiState with _$ChatUiState {
  const factory ChatUiState.initial() = InitialState;

  const factory ChatUiState.loading() = LoadingState;

  const factory ChatUiState.successChat({required Chat chat}) = SuccessChatState;

  const factory ChatUiState.successChatHistory({List<ChatHistory>? chats, @Default(true) bool hasMore}) = SuccessChatHistoryState;


  const factory ChatUiState.error(String message) = ErrorState;
}
