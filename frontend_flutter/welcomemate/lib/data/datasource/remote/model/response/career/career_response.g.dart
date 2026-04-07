// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'career_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CareerResponseImpl _$$CareerResponseImplFromJson(Map<String, dynamic> json) =>
    _$CareerResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: CareerDataResponse.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$$CareerResponseImplToJson(
  _$CareerResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'timestamp': instance.timestamp,
};
