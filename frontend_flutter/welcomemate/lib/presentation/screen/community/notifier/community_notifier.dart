import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:welcomemate/data/datasource/remote/model/request/community/post_request.dart';
import 'package:welcomemate/domain/model/community/post.dart';
import 'package:welcomemate/domain/usecase/community/add_comment_use_case.dart';
import 'package:welcomemate/domain/usecase/community/create_post_use_case.dart';
import 'package:welcomemate/domain/usecase/community/get_all_posts_use_case.dart';
import 'package:welcomemate/domain/usecase/community/upvote_post_use_case.dart';
import 'package:welcomemate/injection_container.dart';
import 'package:welcomemate/presentation/screen/community/state/community_ui_state.dart';

class CommunityNotifier extends StateNotifier<CommunityUiState> {
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isLoadingMore = false;
  List<Post> _allPosts = [];

  CommunityNotifier() : super(const CommunityUiState.loading()) {
    getAllPost();
  }

  Future<void> createPost({required PostRequest requestBody}) async {
    state = const CommunityUiState.loading();

    final useCase = getIt<CreatePostUseCase>();
    final result = await useCase(requestBody: requestBody);

    state = result.when(
      success: (post) {
        return CommunityUiState.successPost(post: post);
      },
      failure: (failure) {
        return CommunityUiState.error(failure.message);
      },
    );
  }

  Future<void> addComment({
    required String postId,
    required String comment,
  }) async {
    state = const CommunityUiState.loading();

    final useCase = getIt<AddCommentUseCase>();
    final result = await useCase(postId: postId, comment: comment);

    state = result.when(
      success: (comment) {
        return CommunityUiState.successComment(comment: comment);
      },
      failure: (failure) {
        return CommunityUiState.error(failure.message);
      },
    );
  }

  Future<void> upvotePost({required String postId}) async {
    state = const CommunityUiState.loading();

    final useCase = getIt<UpvotePostUseCase>();
    final result = await useCase(postId: postId);

    state = result.when(
      success: (upvote) {
        return CommunityUiState.successUpvotePost(upvote: upvote);
      },
      failure: (failure) {
        return CommunityUiState.error(failure.message);
      },
    );
  }

  Future<void> getAllPost({bool refresh = false}) async {
    if (refresh) {
      _currentPage = 1;
      _hasMore = true;
      _allPosts = [];
    }

    state = const CommunityUiState.loading();

    final useCase = getIt<GetAllPostsUseCase>();
    final result = await useCase(page: _currentPage);

    state = result.when(
      success: (posts) {
        _allPosts = posts;
        _hasMore = posts.length >= 10;
        return CommunityUiState.successPostList(
          posts: _allPosts,
          hasMore: _hasMore,
        );
      },
      failure: (failure) {
        return CommunityUiState.error(failure.message);
      },
    );
  }

  Future<void> loadMore() async {
    if (_isLoadingMore || !_hasMore) return;

    _isLoadingMore = true;
    _currentPage++;

    final useCase = getIt<GetAllPostsUseCase>();
    final result = await useCase(page: _currentPage);

    result.when(
      success: (posts) {
        if (posts.isEmpty || posts.length < 10) {
          _hasMore = false;
        }
        _allPosts.addAll(posts);
        state = CommunityUiState.successPostList(
          posts: _allPosts,
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
