// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guide_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuideResponseImpl _$$GuideResponseImplFromJson(Map<String, dynamic> json) =>
    _$GuideResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: GuideDataResponse.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$$GuideResponseImplToJson(_$GuideResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'timestamp': instance.timestamp,
    };
