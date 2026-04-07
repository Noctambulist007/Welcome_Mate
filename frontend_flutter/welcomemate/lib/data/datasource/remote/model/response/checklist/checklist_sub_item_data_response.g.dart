// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_sub_item_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChecklistSubItemDataResponseImpl _$$ChecklistSubItemDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChecklistSubItemDataResponseImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  requiredDocs: (json['required_docs'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  order: (json['order'] as num).toInt(),
  isCompleted: json['is_completed'] as bool,
);

Map<String, dynamic> _$$ChecklistSubItemDataResponseImplToJson(
  _$ChecklistSubItemDataResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'required_docs': instance.requiredDocs,
  'order': instance.order,
  'is_completed': instance.isCompleted,
};
