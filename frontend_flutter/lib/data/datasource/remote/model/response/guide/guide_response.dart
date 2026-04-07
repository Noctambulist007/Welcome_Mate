import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/auth/auth_data_response.dart';
import 'package:welcomemate/data/datasource/remote/model/response/guide/guide_data_response.dart';

part 'guide_response.freezed.dart';
part 'guide_response.g.dart';

@freezed
abstract class GuideResponse with _$GuideResponse {
  const factory GuideResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required GuideDataResponse data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _GuideResponse;

  factory GuideResponse.fromJson(Map<String, dynamic> json) =>
      _$GuideResponseFromJson(json);
}