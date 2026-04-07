import 'package:welcomemate/data/datasource/remote/model/request/community/post_request.dart';
import 'package:welcomemate/data/repository/source/remote/community_remote_data_source.dart';
import 'package:welcomemate/domain/model/community/comment.dart';
import 'package:welcomemate/domain/model/community/post.dart';
import 'package:welcomemate/domain/model/community/upvote.dart';
import 'package:welcomemate/domain/repository/community_repository.dart';

class CommunityRepositoryImpl implements CommunityRepository {
  final CommunityRemoteDataSource communityRemoteDataSource;

  CommunityRepositoryImpl({required this.communityRemoteDataSource});

  @override
  Future<Post> createPost({required PostRequest requestBody}) async {
    var response = await communityRemoteDataSource.createPost(
      requestBody: requestBody,
    );
    return response;
  }

  @override
  Future<List<Post>> getAllPost({String? countryCode, int page = 1}) async {
    var response = await communityRemoteDataSource.getAllPost(
      countryCode: countryCode,
      page: page,
    );
    return response;
  }

  @override
  Future<Comment> addComment({required String postId, required String comment}) async {
    var response = await communityRemoteDataSource.addComment(
      postId: postId,
      comment: comment,
    );
    return response;
  }

  @override
  Future<Upvote> upvotePost({required String postId}) async {
    var response = await communityRemoteDataSource.upvotePost(
      postId: postId,
    );
    return response;
  }

}
