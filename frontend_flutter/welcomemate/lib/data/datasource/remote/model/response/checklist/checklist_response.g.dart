// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChecklistResponseImpl _$$ChecklistResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChecklistResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: ChecklistDataResponse.fromJson(json['data'] as Map<String, dynamic>),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$$ChecklistResponseImplToJson(
  _$ChecklistResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'timestamp': instance.timestamp,
};
