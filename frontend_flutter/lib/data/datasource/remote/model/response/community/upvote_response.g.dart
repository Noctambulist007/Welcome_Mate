// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upvote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpvoteResponseImpl _$$UpvoteResponseImplFromJson(Map<String, dynamic> json) =>
    _$UpvoteResponseImpl(
      success: json['success'] as bool,
      message: json['message'] as String,
      data: UpvoteDataResponse.fromJson(json['data'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$$UpvoteResponseImplToJson(
  _$UpvoteResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'timestamp': instance.timestamp,
};
