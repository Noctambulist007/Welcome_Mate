// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostResponseImpl _$$PostResponseImplFromJson(Map<String, dynamic> json) =>
    _$PostResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: PostDataResponse.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$$PostResponseImplToJson(_$PostResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'timestamp': instance.timestamp,
    };
