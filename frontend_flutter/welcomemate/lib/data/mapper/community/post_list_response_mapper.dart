import 'package:welcomemate/data/datasource/remote/model/response/community/post_list_response.dart';
import 'package:welcomemate/data/mapper/community/post_response_mapper.dart';
import 'package:welcomemate/domain/model/community/post.dart';

extension PostListResponseMapper on PostListResponse {
  List<Post> toPostList() {
    return data.results?.map((e) => e.toPost()).toList() ?? [];
  }
}
