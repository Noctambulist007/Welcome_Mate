// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChecklistDataResponseImpl _$$ChecklistDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChecklistDataResponseImpl(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>?)
      ?.map(
        (e) => ChecklistItemDataResponse.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$$ChecklistDataResponseImplToJson(
  _$ChecklistDataResponseImpl instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
