// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommentDataResponse _$CommentDataResponseFromJson(Map<String, dynamic> json) {
  return _CommentDataResponse.fromJson(json);
}

/// @nodoc
mixin _$CommentDataResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'post')
  String get post => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_name')
  String get authorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_comment')
  String? get parentComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CommentDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentDataResponseCopyWith<CommentDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDataResponseCopyWith<$Res> {
  factory $CommentDataResponseCopyWith(
    CommentDataResponse value,
    $Res Function(CommentDataResponse) then,
  ) = _$CommentDataResponseCopyWithImpl<$Res, CommentDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'post') String post,
    @JsonKey(name: 'author') String author,
    @JsonKey(name: 'author_name') String authorName,
    @JsonKey(name: 'body') String body,
    @JsonKey(name: 'parent_comment') String? parentComment,
    @JsonKey(name: 'created_at') String createdAt,
  });
}

/// @nodoc
class _$CommentDataResponseCopyWithImpl<$Res, $Val extends CommentDataResponse>
    implements $CommentDataResponseCopyWith<$Res> {
  _$CommentDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? post = null,
    Object? author = null,
    Object? authorName = null,
    Object? body = null,
    Object? parentComment = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            post: null == post
                ? _value.post
                : post // ignore: cast_nullable_to_non_nullable
                      as String,
            author: null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as String,
            authorName: null == authorName
                ? _value.authorName
                : authorName // ignore: cast_nullable_to_non_nullable
                      as String,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            parentComment: freezed == parentComment
                ? _value.parentComment
                : parentComment // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentDataResponseImplCopyWith<$Res>
    implements $CommentDataResponseCopyWith<$Res> {
  factory _$$CommentDataResponseImplCopyWith(
    _$CommentDataResponseImpl value,
    $Res Function(_$CommentDataResponseImpl) then,
  ) = __$$CommentDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'post') String post,
    @JsonKey(name: 'author') String author,
    @JsonKey(name: 'author_name') String authorName,
    @JsonKey(name: 'body') String body,
    @JsonKey(name: 'parent_comment') String? parentComment,
    @JsonKey(name: 'created_at') String createdAt,
  });
}

/// @nodoc
class __$$CommentDataResponseImplCopyWithImpl<$Res>
    extends _$CommentDataResponseCopyWithImpl<$Res, _$CommentDataResponseImpl>
    implements _$$CommentDataResponseImplCopyWith<$Res> {
  __$$CommentDataResponseImplCopyWithImpl(
    _$CommentDataResponseImpl _value,
    $Res Function(_$CommentDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? post = null,
    Object? author = null,
    Object? authorName = null,
    Object? body = null,
    Object? parentComment = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _$CommentDataResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        post: null == post
            ? _value.post
            : post // ignore: cast_nullable_to_non_nullable
                  as String,
        author: null == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as String,
        authorName: null == authorName
            ? _value.authorName
            : authorName // ignore: cast_nullable_to_non_nullable
                  as String,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        parentComment: freezed == parentComment
            ? _value.parentComment
            : parentComment // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentDataResponseImpl implements _CommentDataResponse {
  const _$CommentDataResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'post') required this.post,
    @JsonKey(name: 'author') required this.author,
    @JsonKey(name: 'author_name') required this.authorName,
    @JsonKey(name: 'body') required this.body,
    @JsonKey(name: 'parent_comment') this.parentComment,
    @JsonKey(name: 'created_at') required this.createdAt,
  });

  factory _$CommentDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'post')
  final String post;
  @override
  @JsonKey(name: 'author')
  final String author;
  @override
  @JsonKey(name: 'author_name')
  final String authorName;
  @override
  @JsonKey(name: 'body')
  final String body;
  @override
  @JsonKey(name: 'parent_comment')
  final String? parentComment;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'CommentDataResponse(id: $id, post: $post, author: $author, authorName: $authorName, body: $body, parentComment: $parentComment, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentDataResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.parentComment, parentComment) ||
                other.parentComment == parentComment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    post,
    author,
    authorName,
    body,
    parentComment,
    createdAt,
  );

  /// Create a copy of CommentDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentDataResponseImplCopyWith<_$CommentDataResponseImpl> get copyWith =>
      __$$CommentDataResponseImplCopyWithImpl<_$CommentDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentDataResponseImplToJson(this);
  }
}

abstract class _CommentDataResponse implements CommentDataResponse {
  const factory _CommentDataResponse({
    @JsonKey(name: 'id') required final String id,
    @JsonKey(name: 'post') required final String post,
    @JsonKey(name: 'author') required final String author,
    @JsonKey(name: 'author_name') required final String authorName,
    @JsonKey(name: 'body') required final String body,
    @JsonKey(name: 'parent_comment') final String? parentComment,
    @JsonKey(name: 'created_at') required final String createdAt,
  }) = _$CommentDataResponseImpl;

  factory _CommentDataResponse.fromJson(Map<String, dynamic> json) =
      _$CommentDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'post')
  String get post;
  @override
  @JsonKey(name: 'author')
  String get author;
  @override
  @JsonKey(name: 'author_name')
  String get authorName;
  @override
  @JsonKey(name: 'body')
  String get body;
  @override
  @JsonKey(name: 'parent_comment')
  String? get parentComment;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;

  /// Create a copy of CommentDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentDataResponseImplCopyWith<_$CommentDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
