import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/emergency/emergency_item_data_response.dart';

part 'emergency_data_response.freezed.dart';

part 'emergency_data_response.g.dart';

@freezed
abstract class EmergencyDataResponse with _$EmergencyDataResponse {
  const factory EmergencyDataResponse({
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'next') required String? next,
    @JsonKey(name: 'previous') required String? previous,
    @JsonKey(name: 'results') List<EmergencyItemDataResponse>? results,
  }) = _CareerDataResponse;

  factory EmergencyDataResponse.fromJson(Map<String, dynamic> json) =>
      _$EmergencyDataResponseFromJson(json);
}
