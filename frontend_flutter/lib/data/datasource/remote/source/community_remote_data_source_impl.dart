import 'package:welcomemate/data/datasource/remote/api/community_api.dart';
import 'package:welcomemate/data/datasource/remote/model/request/community/post_request.dart';
import 'package:welcomemate/data/repository/source/remote/community_remote_data_source.dart';
import 'package:welcomemate/domain/model/community/comment.dart';
import 'package:welcomemate/domain/model/community/post.dart';
import 'package:welcomemate/domain/model/community/upvote.dart';

class CommunityRemoteDataSourceImpl extends CommunityRemoteDataSource {
  final CommunityApi _communityApi;

  CommunityRemoteDataSourceImpl({required CommunityApi communityApi})
    : _communityApi = communityApi;

  @override
  Future<Post> createPost({required PostRequest requestBody}) async {
    var response = await _communityApi.createPost(requestBody: requestBody);
    return response;
  }

  @override
  Future<List<Post>> getAllPost({String? countryCode, int page = 1}) async {
    var response = await _communityApi.getAllPost(
      countryCode: countryCode,
      page: page,
    );
    return response;
  }

  @override
  Future<Comment> addComment({
    required String postId,
    required String comment,
  }) async {
    var response = await _communityApi.addComment(
      postId: postId,
      comment: comment,
    );
    return response;
  }

  @override
  Future<Upvote> upvotePost({required String postId}) async {
    var response = await _communityApi.upvotePost(postId: postId);
    return response;
  }
}
