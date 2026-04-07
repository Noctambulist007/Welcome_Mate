import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/domain/model/chat/chat_history.dart';
import 'package:welcomemate/domain/usecase/chat/get_chat_history_use_case.dart';
import 'package:welcomemate/domain/usecase/chat/send_message_use_case.dart';
import 'package:welcomemate/injection_container.dart';
import 'package:welcomemate/presentation/screen/chat/state/chat_ui_state.dart';

class ChatNotifier extends StateNotifier<ChatUiState> {
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isLoadingMore = false;
  List<ChatHistory> _allChats = [];

  ChatNotifier() : super(const ChatUiState.loading()) {
    getChatHistory();
  }

  Future<void> sendMessage({required String message}) async {
    state = const ChatUiState.loading();

    final useCase = getIt<SendMessageUseCase>();
    final result = await useCase(message: message);

    state = result.when(
      success: (chat) {
        return ChatUiState.successChat(chat: chat);
      },
      failure: (failure) {
        return ChatUiState.error(failure.message);
      },
    );
  }

  Future<void> getChatHistory({bool refresh = false}) async {
    if (refresh) {
      _currentPage = 1;
      _hasMore = true;
      _allChats = [];
    }

    state = const ChatUiState.loading();

    final useCase = getIt<GetChatHistoryUseCase>();
    final result = await useCase(page: _currentPage);

    state = result.when(
      success: (chats) {
        _allChats = chats;
        _hasMore = chats.length >= 10;
        return ChatUiState.successChatHistory(
          chats: _allChats,
          hasMore: _hasMore,
        );
      },
      failure: (failure) {
        return ChatUiState.error(failure.message);
      },
    );
  }

  Future<void> loadMore() async {
    if (_isLoadingMore || !_hasMore) return;

    _isLoadingMore = true;
    _currentPage++;

    final useCase = getIt<GetChatHistoryUseCase>();
    final result = await useCase(page: _currentPage);

    result.when(
      success: (chats) {
        if (chats.isEmpty || chats.length < 10) {
          _hasMore = false;
        }
        _allChats.addAll(chats);
        state = ChatUiState.successChatHistory(
          chats: _allChats,
          hasMore: _hasMore,
        );
      },
      failure: (failure) {
        _currentPage--;
      },
    );

    _isLoadingMore = false;
  }
}
