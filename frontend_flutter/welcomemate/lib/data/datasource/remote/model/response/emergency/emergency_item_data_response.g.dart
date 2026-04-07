// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_item_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CareerItemDataResponseImpl _$$CareerItemDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CareerItemDataResponseImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  number: json['number'] as String,
  description: json['description'] as String,
  countryCode: json['country_code'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$$CareerItemDataResponseImplToJson(
  _$CareerItemDataResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'number': instance.number,
  'description': instance.description,
  'country_code': instance.countryCode,
  'type': instance.type,
};
