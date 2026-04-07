import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/community/post_data_response.dart';

part 'post_list_data_response.freezed.dart';
part 'post_list_data_response.g.dart';

@freezed
abstract class PostListDataResponse with _$PostListDataResponse {
  const factory PostListDataResponse({
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'next') required String? next,
    @JsonKey(name: 'previous') required String? previous,
    @JsonKey(name: 'results')  List<PostDataResponse>? results,
  }) = _PostListResponse;

  factory PostListDataResponse.fromJson(Map<String, dynamic> json) =>
      _$PostListDataResponseFromJson(json);
}
