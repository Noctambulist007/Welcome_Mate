import 'package:welcomemate/domain/model/chat/chat_history.dart';
import 'package:welcomemate/domain/model/community/post.dart';
import 'package:welcomemate/domain/repository/chat_repository.dart';
import 'package:welcomemate/domain/repository/community_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class GetAllPostsUseCase {
  final CommunityRepository _communityRepository;

  GetAllPostsUseCase({required CommunityRepository communityRepository})
    : _communityRepository = communityRepository;

  Future<Result<List<Post>>> call({String? countryCode, int page = 1}) async {
    return await _communityRepository
        .getAllPost(countryCode: countryCode, page: page)
        .then((posts) => Result.success(posts))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
