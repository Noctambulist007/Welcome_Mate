import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/domain/model/community/comment.dart';
import 'package:welcomemate/domain/model/community/post.dart';
import 'package:welcomemate/domain/model/community/upvote.dart';

part 'community_ui_state.freezed.dart';

@freezed
class CommunityUiState with _$CommunityUiState {
  const factory CommunityUiState.initial() = InitialState;

  const factory CommunityUiState.loading() = LoadingState;

  const factory CommunityUiState.successPost({required Post post}) = SuccessPostState;

  const factory CommunityUiState.successPostList({List<Post>? posts, @Default(true) bool hasMore}) = SuccessPostListState;
  const factory CommunityUiState.successComment({required Comment comment}) = SuccessCommentState;
  const factory CommunityUiState.successUpvotePost({required Upvote upvote}) = SuccessUpvotePostState;


  const factory CommunityUiState.error(String message) = ErrorState;
}
