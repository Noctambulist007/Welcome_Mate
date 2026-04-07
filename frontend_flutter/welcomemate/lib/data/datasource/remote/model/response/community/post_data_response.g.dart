// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostDataResponseImpl _$$PostDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PostDataResponseImpl(
  id: json['id'] as String,
  author: json['author'] as String,
  authorName: json['author_name'] as String,
  title: json['title'] as String,
  body: json['body'] as String,
  countryCode: json['country_code'] as String,
  tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
  upvotesCount: (json['upvotes_count'] as num).toInt(),
  commentsCount: (json['comments_count'] as num).toInt(),
  comments: (json['comments'] as List<dynamic>)
      .map((e) => CommentDataResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  isUpvoted: json['is_upvoted'] as bool,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$$PostDataResponseImplToJson(
  _$PostDataResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'author': instance.author,
  'author_name': instance.authorName,
  'title': instance.title,
  'body': instance.body,
  'country_code': instance.countryCode,
  'tags': instance.tags,
  'upvotes_count': instance.upvotesCount,
  'comments_count': instance.commentsCount,
  'comments': instance.comments,
  'is_upvoted': instance.isUpvoted,
  'created_at': instance.createdAt,
};
