// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_history_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatHistoryDataResponseImpl _$$ChatHistoryDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChatHistoryDataResponseImpl(
  count: (json['count'] as num).toInt(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
  results: (json['results'] as List<dynamic>?)
      ?.map(
        (e) => ChatHistoryItemDataResponse.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$$ChatHistoryDataResponseImplToJson(
  _$ChatHistoryDataResponseImpl instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': instance.next,
  'previous': instance.previous,
  'results': instance.results,
};
