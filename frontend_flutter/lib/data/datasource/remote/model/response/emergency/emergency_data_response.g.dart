// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CareerDataResponseImpl _$$CareerDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CareerDataResponseImpl(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>?)
      ?.map(
        (e) => EmergencyItemDataResponse.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$$CareerDataResponseImplToJson(
  _$CareerDataResponseImpl instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
