// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatHistoryResponseImpl _$$ChatHistoryResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChatHistoryResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: ChatHistoryDataResponse.fromJson(json['data'] as Map<String, dynamic>),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$$ChatHistoryResponseImplToJson(
  _$ChatHistoryResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'timestamp': instance.timestamp,
};
