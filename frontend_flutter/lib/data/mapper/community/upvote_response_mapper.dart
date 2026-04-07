import 'package:welcomemate/data/datasource/remote/model/response/community/upvote_data_response.dart';
import 'package:welcomemate/domain/model/community/upvote.dart';

extension UpvoteResponseMapper on UpvoteDataResponse {
  Upvote toUpvote() {
    return Upvote(
      ok: ok,
      upvoted: upvoted,
    );
  }
}
