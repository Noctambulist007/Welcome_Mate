import 'package:welcomemate/data/datasource/remote/model/request/community/post_request.dart';
import 'package:welcomemate/domain/model/chat/chat.dart';
import 'package:welcomemate/domain/model/community/post.dart';
import 'package:welcomemate/domain/model/community/upvote.dart';
import 'package:welcomemate/domain/repository/chat_repository.dart';
import 'package:welcomemate/domain/repository/community_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class UpvotePostUseCase {
  final CommunityRepository _communityRepository;

  UpvotePostUseCase({required CommunityRepository communityRepository})
    : _communityRepository = communityRepository;

  Future<Result<Upvote>> call({required  String postId}) async {
    return await _communityRepository
        .upvotePost(postId: postId)
        .then((upvote) => Result.success(upvote))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
