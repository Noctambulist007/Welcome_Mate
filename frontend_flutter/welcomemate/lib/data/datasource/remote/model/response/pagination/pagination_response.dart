import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_response.freezed.dart';
part 'pagination_response.g.dart';

@freezed
abstract class PaginationResponse with _$PaginationResponse{
  const factory PaginationResponse({
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'limit') required int limit,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'pages') required int pages,
  }) = _PaginationResponse;

  factory PaginationResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginationResponseFromJson(json);
}
