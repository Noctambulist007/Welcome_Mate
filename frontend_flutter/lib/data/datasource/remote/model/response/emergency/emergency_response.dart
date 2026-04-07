import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/emergency/emergency_data_response.dart';

part 'emergency_response.freezed.dart';
part 'emergency_response.g.dart';

@freezed
abstract class EmergencyResponse with _$EmergencyResponse {
  const factory EmergencyResponse({
    @JsonKey(name: 'success') required bool success,
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'data') required EmergencyDataResponse data,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _EmergencyResponse;

  factory EmergencyResponse.fromJson(Map<String, dynamic> json) =>
      _$EmergencyResponseFromJson(json);
}