// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentDataResponseImpl _$$CommentDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CommentDataResponseImpl(
  id: json['id'] as String,
  post: json['post'] as String,
  author: json['author'] as String,
  authorName: json['author_name'] as String,
  body: json['body'] as String,
  parentComment: json['parent_comment'] as String?,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$$CommentDataResponseImplToJson(
  _$CommentDataResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'post': instance.post,
  'author': instance.author,
  'author_name': instance.authorName,
  'body': instance.body,
  'parent_comment': instance.parentComment,
  'created_at': instance.createdAt,
};
