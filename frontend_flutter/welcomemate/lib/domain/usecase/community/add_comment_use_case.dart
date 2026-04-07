import 'package:welcomemate/data/datasource/remote/model/request/community/post_request.dart';
import 'package:welcomemate/domain/model/chat/chat.dart';
import 'package:welcomemate/domain/model/community/comment.dart';
import 'package:welcomemate/domain/model/community/post.dart';
import 'package:welcomemate/domain/repository/chat_repository.dart';
import 'package:welcomemate/domain/repository/community_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class AddCommentUseCase {
  final CommunityRepository _communityRepository;

  AddCommentUseCase({required CommunityRepository communityRepository})
    : _communityRepository = communityRepository;

  Future<Result<Comment>> call({
    required String postId,
    required String comment,
  }) async {
    return await _communityRepository
        .addComment(postId: postId, comment: comment)
        .then((comment) => Result.success(comment))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
