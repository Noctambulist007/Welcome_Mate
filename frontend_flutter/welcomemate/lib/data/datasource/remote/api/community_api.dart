import 'package:welcomemate/data/datasource/remote/model/request/community/post_request.dart';
import 'package:welcomemate/domain/model/community/comment.dart';
import 'package:welcomemate/domain/model/community/post.dart';
import 'package:welcomemate/domain/model/community/upvote.dart';

abstract class CommunityApi {
  Future<Post> createPost({required PostRequest requestBody});

  Future<List<Post>> getAllPost({String? countryCode, int page = 1});

  Future<Comment> addComment({required String postId, required String comment});

  Future<Upvote> upvotePost({required String postId});
}
