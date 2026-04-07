import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/community/upvote_data_response.dart';

part 'upvote_response.freezed.dart';
part 'upvote_response.g.dart';

@freezed
abstract class UpvoteResponse with _$UpvoteResponse {
  const factory UpvoteResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required UpvoteDataResponse data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _UpvoteResponse;

  factory UpvoteResponse.fromJson(Map<String, dynamic> json) =>
      _$UpvoteResponseFromJson(json);
}