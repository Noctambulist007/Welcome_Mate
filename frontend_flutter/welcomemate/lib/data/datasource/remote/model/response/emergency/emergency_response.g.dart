// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmergencyResponseImpl _$$EmergencyResponseImplFromJson(
  Map<String, dynamic> json,
) => _$EmergencyResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: EmergencyDataResponse.fromJson(json['data'] as Map<String, dynamic>),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$$EmergencyResponseImplToJson(
  _$EmergencyResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'timestamp': instance.timestamp,
};
