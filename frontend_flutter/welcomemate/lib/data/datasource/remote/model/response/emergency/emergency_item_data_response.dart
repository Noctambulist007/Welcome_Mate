import 'package:freezed_annotation/freezed_annotation.dart';

part 'emergency_item_data_response.freezed.dart';
part 'emergency_item_data_response.g.dart';

@freezed
abstract class EmergencyItemDataResponse with _$EmergencyItemDataResponse {
  const factory EmergencyItemDataResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'number') required String number,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'country_code') required String countryCode,
    @JsonKey(name: 'type') required String type,
  }) = _CareerItemDataResponse;

  factory EmergencyItemDataResponse.fromJson(Map<String, dynamic> json) =>
      _$EmergencyItemDataResponseFromJson(json);
}
