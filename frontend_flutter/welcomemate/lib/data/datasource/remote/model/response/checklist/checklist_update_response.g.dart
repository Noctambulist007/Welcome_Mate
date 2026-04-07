// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_update_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChecklistUpdateResponseImpl _$$ChecklistUpdateResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChecklistUpdateResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: ChecklistUpdateDataResponse.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  timestamp: json['timestamp'] as String,
);

Map<String, dynamic> _$$ChecklistUpdateResponseImplToJson(
  _$ChecklistUpdateResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
  'timestamp': instance.timestamp,
};
