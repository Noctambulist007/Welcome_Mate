import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/career/career_data_response.dart';

part 'career_response.freezed.dart';
part 'career_response.g.dart';

@freezed
abstract class CareerResponse with _$CareerResponse {
  const factory CareerResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required CareerDataResponse data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _CareerResponse;

  factory CareerResponse.fromJson(Map<String, dynamic> json) =>
      _$CareerResponseFromJson(json);
}