import 'package:freezed_annotation/freezed_annotation.dart';

part 'upvote_data_response.freezed.dart';
part 'upvote_data_response.g.dart';

@freezed
abstract class UpvoteDataResponse with _$UpvoteDataResponse {
  const factory UpvoteDataResponse({
    @JsonKey(name: 'ok') required bool ok,
    @JsonKey(name: 'upvoted') required bool upvoted,
  }) = _UpvoteDataResponse;

  factory UpvoteDataResponse.fromJson(Map<String, dynamic> json) =>
      _$UpvoteDataResponseFromJson(json);
}
