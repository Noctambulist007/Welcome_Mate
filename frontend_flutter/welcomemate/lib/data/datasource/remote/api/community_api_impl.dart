import 'package:welcomemate/data/datasource/remote/api/community_api.dart';
import 'package:welcomemate/data/datasource/remote/model/request/community/post_request.dart';
import 'package:welcomemate/data/datasource/remote/model/response/community/comment_response.dart';
import 'package:welcomemate/data/datasource/remote/model/response/community/post_list_response.dart';
import 'package:welcomemate/data/datasource/remote/model/response/community/post_response.dart';
import 'package:welcomemate/data/datasource/remote/model/response/community/upvote_response.dart';
import 'package:welcomemate/data/datasource/remote/util/api_client.dart';
import 'package:welcomemate/data/mapper/community/comment_response_mapper.dart';
import 'package:welcomemate/data/mapper/community/post_list_response_mapper.dart';
import 'package:welcomemate/data/mapper/community/post_response_mapper.dart';
import 'package:welcomemate/data/mapper/community/upvote_response_mapper.dart';
import 'package:welcomemate/domain/model/community/comment.dart';
import 'package:welcomemate/domain/model/community/post.dart';
import 'package:welcomemate/domain/model/community/upvote.dart';

class CommunityApiImpl extends CommunityApi {
  final ApiClient _client;

  static const createPostUrl = 'posts';
  static const getAllPostUrl = 'posts';
  static const addCommentUrl = 'posts';
  static const upvotePostUrl = 'posts';

  CommunityApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<Post> createPost({required PostRequest requestBody}) async {
    try {
      final response = await _client.post<JSONObject, PostResponse>(
        path: createPostUrl,
        data: requestBody.toJson(),
        converter: (json) {
          return PostResponse.fromJson(json);
        },
      );
      return response.data.toPost();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Post>> getAllPost({String? countryCode, int page = 1}) async {
    try {
      final response = await _client.get<JSONObject, PostListResponse>(
        path: getAllPostUrl,
        queryParameters: {
          if (countryCode != null) 'country_code': countryCode,
          'page': page.toString(),
        },
        converter: (json) {
          return PostListResponse.fromJson(json);
        },
      );
      return response.toPostList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Comment> addComment({
    required String postId,
    required String comment,
  }) async {
    try {
      final response = await _client.post<JSONObject, CommentResponse>(
        path: '$addCommentUrl/$postId/comments',
        data: {'body': comment},
        converter: (json) {
          return CommentResponse.fromJson(json);
        },
      );
      return response.data.toComment();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Upvote> upvotePost({required String postId}) async {
    try {
      final response = await _client.post<JSONObject, UpvoteResponse>(
        path: '$upvotePostUrl/$postId/upvote',
        converter: (json) {
          return UpvoteResponse.fromJson(json);
        },
      );
      return response.data.toUpvote();
    } catch (e) {
      rethrow;
    }
  }
}
