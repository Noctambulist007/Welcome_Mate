import 'package:welcomemate/data/datasource/remote/model/request/community/post_request.dart';
import 'package:welcomemate/domain/model/chat/chat.dart';
import 'package:welcomemate/domain/model/community/post.dart';
import 'package:welcomemate/domain/repository/chat_repository.dart';
import 'package:welcomemate/domain/repository/community_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class CreatePostUseCase {
  final CommunityRepository _communityRepository;

  CreatePostUseCase({required CommunityRepository communityRepository})
    : _communityRepository = communityRepository;

  Future<Result<Post>> call({required PostRequest requestBody}) async {
    return await _communityRepository
        .createPost(requestBody: requestBody)
        .then((post) => Result.success(post))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
