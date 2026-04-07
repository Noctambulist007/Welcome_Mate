// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChecklistUpdateRequestImpl _$$ChecklistUpdateRequestImplFromJson(
  Map<String, dynamic> json,
) => _$ChecklistUpdateRequestImpl(
  itemId: json['itemId'] as String,
  completed: json['completed'] as bool,
);

Map<String, dynamic> _$$ChecklistUpdateRequestImplToJson(
  _$ChecklistUpdateRequestImpl instance,
) => <String, dynamic>{
  'itemId': instance.itemId,
  'completed': instance.completed,
};
