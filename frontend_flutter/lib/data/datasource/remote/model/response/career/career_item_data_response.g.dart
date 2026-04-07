// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'career_item_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CareerItemDataResponseImpl _$$CareerItemDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CareerItemDataResponseImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  bodyMarkdown: json['body_markdown'] as String,
  countryCode: json['country_code'] as String,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  verifiedAt: json['verified_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$$CareerItemDataResponseImplToJson(
  _$CareerItemDataResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'body_markdown': instance.bodyMarkdown,
  'country_code': instance.countryCode,
  'tags': instance.tags,
  'verified_at': instance.verifiedAt,
  'updated_at': instance.updatedAt,
};
