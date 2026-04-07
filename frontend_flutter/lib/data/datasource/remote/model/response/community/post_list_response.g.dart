// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostListResponseImpl _$$PostListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PostListResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: PostListDataResponse.fromJson(json['data'] as Map<String, dynamic>),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$$PostListResponseImplToJson(
  _$PostListResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'timestamp': instance.timestamp,
};
