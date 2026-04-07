// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostListResponseImpl _$$PostListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PostListResponseImpl(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>?)
      ?.map((e) => PostDataResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$PostListResponseImplToJson(
  _$PostListResponseImpl instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
