// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_item_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChecklistItemDataResponseImpl _$$ChecklistItemDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChecklistItemDataResponseImpl(
  id: json['id'] as String,
  slug: json['slug'] as String,
  title: json['title'] as String,
  countryCode: json['country_code'] as String,
  stage: json['stage'] as String,
  order: (json['order'] as num).toInt(),
  items: (json['items'] as List<dynamic>?)
      ?.map(
        (e) => ChecklistSubItemDataResponse.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$$ChecklistItemDataResponseImplToJson(
  _$ChecklistItemDataResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'slug': instance.slug,
  'title': instance.title,
  'country_code': instance.countryCode,
  'stage': instance.stage,
  'order': instance.order,
  'items': instance.items,
};
