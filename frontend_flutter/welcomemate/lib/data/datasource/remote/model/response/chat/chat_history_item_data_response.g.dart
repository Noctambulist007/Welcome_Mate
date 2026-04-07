// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history_item_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatHistoryItemDataResponseImpl _$$ChatHistoryItemDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChatHistoryItemDataResponseImpl(
  id: json['id'] as String,
  user: json['user'] as String,
  message: json['message'] as String,
  botReply: json['bot_reply'] as String,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$$ChatHistoryItemDataResponseImplToJson(
  _$ChatHistoryItemDataResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'user': instance.user,
  'message': instance.message,
  'bot_reply': instance.botReply,
  'created_at': instance.createdAt,
};
