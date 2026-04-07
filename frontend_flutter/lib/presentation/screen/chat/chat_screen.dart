import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welcomemate/domain/model/chat/chat_history.dart';
import 'package:welcomemate/presentation/screen/chat/notifier/provider.dart';
import 'package:welcomemate/presentation/theme/color.dart';
import 'package:intl/intl.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ChatScreen extends ConsumerStatefulWidget {
  final bool isPushed;
  const ChatScreen({super.key, this.isPushed = false});

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;
  bool _isSending = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(chatNotifierProvider.notifier).getChatHistory();
    });
  }

  void _onScroll() {
    if (_scrollController.position.pixels <= _scrollController.position.minScrollExtent + 100) {
      final state = ref.read(chatNotifierProvider);
      state.maybeWhen(
        successChatHistory: (chats, hasMore) {
          if (hasMore && !_isLoadingMore) {
            setState(() => _isLoadingMore = true);
            ref.read(chatNotifierProvider.notifier).loadMore().then((_) {
              setState(() => _isLoadingMore = false);
            });
          }
        },
        orElse: () {},
      );
    }
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _sendMessage() async {
    final message = _messageController.text.trim();
    if (message.isEmpty) return;

    setState(() => _isSending = true);
    _messageController.clear();

    await ref.read(chatNotifierProvider.notifier).sendMessage(message: message);

    setState(() => _isSending = false);
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      Future.delayed(const Duration(milliseconds: 100), () {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final chatUiState = ref.watch(chatNotifierProvider);

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                _buildAppBar(),
                chatUiState.when(
                  initial: () => SliverToBoxAdapter(child: _buildEmptyState()),
                  loading: () => SliverFillRemaining(child: _buildLoadingState()),
                  successChat: (chat) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      ref.read(chatNotifierProvider.notifier).getChatHistory(refresh: true).then((_) {
                        _scrollToBottom();
                      });
                    });
                     return SliverToBoxAdapter(child: _buildEmptyState());
                  },
                  successChatHistory: (chats, hasMore) => _buildChatList(chats ?? [], hasMore),
                  error: (message) => SliverFillRemaining(child: _buildErrorState(message)),
                ),
              ],
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      leading: widget.isPushed
          ? IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.colorWhite,
                size: 20.w,
              ),
              onPressed: () => Navigator.pop(context),
            )
          : null,
      expandedHeight: 120.h,
      floating: false,
      pinned: true,
      elevation: 0,
      backgroundColor: AppColors.colorPrimary,
      surfaceTintColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 16.w, bottom: 16.h),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(6.w),
              decoration: BoxDecoration(
                color: AppColors.colorWhite.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(
                Icons.smart_toy_outlined,
                color: AppColors.colorWhite,
                size: 16.w,
              ),
            ),
            SizedBox(width: 8.w),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'AI Assistant',
                  style: TextStyle(
                    color: AppColors.colorWhite,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Always here to help',
                  style: TextStyle(
                    color: AppColors.colorWhite.withOpacity(0.8),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.colorPrimary,
                AppColors.primarySurfaceDarker,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildChatList(List<ChatHistory> chats, bool hasMore) {
    if (chats.isEmpty) {
      return SliverToBoxAdapter(child: _buildEmptyState());
    }

    final sortedChats = List<ChatHistory>.from(chats);
    sortedChats.sort((a, b) {
      try {
        final dateA = DateTime.parse(a.createdAt);
        final dateB = DateTime.parse(b.createdAt);
        return dateA.compareTo(dateB);
      } catch (e) {
        return 0;
      }
    });

    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (_isLoadingMore && index == 0) {
              return Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20.w,
                      height: 20.h,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(AppColors.colorPrimary),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Text(
                      'Loading more messages...',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.grayscaleTextSubtitle,
                      ),
                    ),
                  ],
                ),
              );
            }

            final chatIndex = _isLoadingMore ? index - 1 : index;
            if (chatIndex < sortedChats.length) {
              final chat = sortedChats[chatIndex];
              return _buildChatMessages(chat);
            }
            return null;
          },
          childCount: sortedChats.length + (_isLoadingMore ? 1 : 0),
        ),
      ),
    );
  }

  Widget _buildChatMessages(ChatHistory chat) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildUserMessage(chat.message, chat.createdAt),
        SizedBox(height: 12.h),

        _buildBotMessage(chat.botReply, chat.createdAt),
        SizedBox(height: 24.h),
      ],
    );
  }

  Widget _buildUserMessage(String message, String timestamp) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        constraints: BoxConstraints(maxWidth: 280.w),
        margin: EdgeInsets.only(left: 48.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.colorPrimary,
                    AppColors.primarySurfaceDarker,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                  bottomLeft: Radius.circular(16.r),
                  bottomRight: Radius.circular(4.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.colorPrimary.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                message,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.colorWhite,
                  height: 1.4,
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              _formatTimestamp(timestamp),
              style: TextStyle(
                fontSize: 11.sp,
                color: AppColors.grayscaleTextSubtitle,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBotMessage(String message, String timestamp) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(maxWidth: 280.w),
        margin: EdgeInsets.only(right: 48.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: AppColors.primarySurfaceSubtitle,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    Icons.smart_toy,
                    color: AppColors.colorPrimary,
                    size: 16.w,
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    decoration: BoxDecoration(
                      color: AppColors.colorWhite,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.r),
                        topRight: Radius.circular(16.r),
                        bottomLeft: Radius.circular(16.r),
                        bottomRight: Radius.circular(16.r),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: MarkdownBody(
                      data: message,
                      styleSheet: MarkdownStyleSheet(
                        p: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.grayscaleTextBody,
                          height: 1.4,
                        ),
                        h1: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.grayscaleTextTitle,
                        ),
                        h2: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.grayscaleTextTitle,
                        ),
                        h3: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grayscaleTextTitle,
                        ),
                        strong: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.grayscaleTextTitle,
                        ),
                        em: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: AppColors.grayscaleTextBody,
                        ),
                        code: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: 'monospace',
                          backgroundColor: AppColors.grayscaleSurfaceSubtitle,
                          color: AppColors.colorPrimary,
                        ),
                        codeblockDecoration: BoxDecoration(
                          color: AppColors.grayscaleSurfaceSubtitle,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        blockquote: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.grayscaleTextSubtitle,
                          fontStyle: FontStyle.italic,
                        ),
                        blockquoteDecoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: AppColors.colorPrimary,
                              width: 3,
                            ),
                          ),
                        ),
                        listBullet: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.colorPrimary,
                        ),
                        a: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.colorPrimary,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      selectable: true,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Text(
                _formatTimestamp(timestamp),
                style: TextStyle(
                  fontSize: 11.sp,
                  color: AppColors.grayscaleTextSubtitle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.colorWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.grayscaleSurfaceBackground,
                borderRadius: BorderRadius.circular(24.r),
                border: Border.all(
                  color: AppColors.grayscaleBorderDefault,
                  width: 1,
                ),
              ),
              child: TextField(
                controller: _messageController,
                enabled: !_isSending,
                maxLines: null,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  hintText: 'Type your message...',
                  hintStyle: TextStyle(
                    color: AppColors.grayscaleTextSubtitle,
                    fontSize: 14.sp,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 12.h,
                  ),
                ),
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.grayscaleTextBody,
                ),
                onSubmitted: (_) => _sendMessage(),
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.colorPrimary,
                  AppColors.primarySurfaceDarker,
                ],
              ),
              borderRadius: BorderRadius.circular(24.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.colorPrimary.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(24.r),
                onTap: _isSending ? null : _sendMessage,
                child: Container(
                  padding: EdgeInsets.all(12.w),
                  child: _isSending
                      ? SizedBox(
                          width: 20.w,
                          height: 20.h,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              AppColors.colorWhite,
                            ),
                          ),
                        )
                      : Icon(
                          Icons.send_rounded,
                          color: AppColors.colorWhite,
                          size: 20.w,
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 32.w),
        padding: EdgeInsets.all(32.w),
        decoration: BoxDecoration(
          color: AppColors.colorWhite,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: AppColors.primarySurfaceSubtitle,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Icon(
                Icons.chat_bubble_outline,
                size: 48.w,
                color: AppColors.colorPrimary,
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'Start a Conversation',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.grayscaleTextTitle,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              'Ask me anything! I\'m here to help you with information, guidance, and support.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.grayscaleTextSubtitle,
                height: 1.5,
              ),
            ),
            SizedBox(height: 24.h),
            Wrap(
              spacing: 8.w,
              runSpacing: 8.h,
              alignment: WrapAlignment.center,
              children: [
                _buildSuggestionChip('How do I register?'),
                _buildSuggestionChip('Find a GP'),
                _buildSuggestionChip('Emergency contacts'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSuggestionChip(String text) {
    return InkWell(
      onTap: () {
        _messageController.text = text;
      },
      borderRadius: BorderRadius.circular(20.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: AppColors.primarySurfaceSubtitle,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: AppColors.colorPrimary.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColors.colorPrimary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.colorPrimary),
          ),
          SizedBox(height: 16.h),
          Text(
            'Loading messages...',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.grayscaleTextSubtitle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String message) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 32.w),
        padding: EdgeInsets.all(24.w),
        decoration: BoxDecoration(
          color: AppColors.colorWhite,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: AppColors.dangerBorderDefault, width: 1),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline,
              size: 48.w,
              color: AppColors.dangerSurfaceDefault,
            ),
            SizedBox(height: 16.h),
            Text(
              'Oops! Something went wrong',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.grayscaleTextTitle,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.grayscaleTextSubtitle,
              ),
            ),
            SizedBox(height: 16.h),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(chatNotifierProvider.notifier).getChatHistory(refresh: true);
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.colorPrimary,
                foregroundColor: AppColors.colorWhite,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatTimestamp(String timestamp) {
    try {
      final dateTime = DateTime.parse(timestamp);
      final now = DateTime.now();
      final difference = now.difference(dateTime);

      if (difference.inDays == 0) {
        return DateFormat('HH:mm').format(dateTime);
      } else if (difference.inDays == 1) {
        return 'Yesterday ${DateFormat('HH:mm').format(dateTime)}';
      } else if (difference.inDays < 7) {
        return DateFormat('EEE HH:mm').format(dateTime);
      } else {
        return DateFormat('MMM dd, HH:mm').format(dateTime);
      }
    } catch (e) {
      return timestamp;
    }
  }
}
