// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostRequestImpl _$$PostRequestImplFromJson(Map<String, dynamic> json) =>
    _$PostRequestImpl(
      title: json['title'] as String,
      body: json['body'] as String,
      countryCode: json['country_code'] as String,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PostRequestImplToJson(_$PostRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'country_code': instance.countryCode,
      if (instance.tags case final value?) 'tags': value,
    };
