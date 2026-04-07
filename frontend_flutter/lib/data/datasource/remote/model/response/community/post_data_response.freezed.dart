// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PostDataResponse _$PostDataResponseFromJson(Map<String, dynamic> json) {
  return _PostDataResponse.fromJson(json);
}

/// @nodoc
mixin _$PostDataResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_name')
  String get authorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'upvotes_count')
  int get upvotesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments_count')
  int get commentsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments')
  List<CommentDataResponse> get comments => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_upvoted')
  bool get isUpvoted => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PostDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostDataResponseCopyWith<PostDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDataResponseCopyWith<$Res> {
  factory $PostDataResponseCopyWith(
    PostDataResponse value,
    $Res Function(PostDataResponse) then,
  ) = _$PostDataResponseCopyWithImpl<$Res, PostDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'author') String author,
    @JsonKey(name: 'author_name') String authorName,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'body') String body,
    @JsonKey(name: 'country_code') String countryCode,
    @JsonKey(name: 'tags') List<String>? tags,
    @JsonKey(name: 'upvotes_count') int upvotesCount,
    @JsonKey(name: 'comments_count') int commentsCount,
    @JsonKey(name: 'comments') List<CommentDataResponse> comments,
    @JsonKey(name: 'is_upvoted') bool isUpvoted,
    @JsonKey(name: 'created_at') String createdAt,
  });
}

/// @nodoc
class _$PostDataResponseCopyWithImpl<$Res, $Val extends PostDataResponse>
    implements $PostDataResponseCopyWith<$Res> {
  _$PostDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? authorName = null,
    Object? title = null,
    Object? body = null,
    Object? countryCode = null,
    Object? tags = freezed,
    Object? upvotesCount = null,
    Object? commentsCount = null,
    Object? comments = null,
    Object? isUpvoted = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            author: null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as String,
            authorName: null == authorName
                ? _value.authorName
                : authorName // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            countryCode: null == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                      as String,
            tags: freezed == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            upvotesCount: null == upvotesCount
                ? _value.upvotesCount
                : upvotesCount // ignore: cast_nullable_to_non_nullable
                      as int,
            commentsCount: null == commentsCount
                ? _value.commentsCount
                : commentsCount // ignore: cast_nullable_to_non_nullable
                      as int,
            comments: null == comments
                ? _value.comments
                : comments // ignore: cast_nullable_to_non_nullable
                      as List<CommentDataResponse>,
            isUpvoted: null == isUpvoted
                ? _value.isUpvoted
                : isUpvoted // ignore: cast_nullable_to_non_nullable
                      as bool,
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
abstract class _$$PostDataResponseImplCopyWith<$Res>
    implements $PostDataResponseCopyWith<$Res> {
  factory _$$PostDataResponseImplCopyWith(
    _$PostDataResponseImpl value,
    $Res Function(_$PostDataResponseImpl) then,
  ) = __$$PostDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'author') String author,
    @JsonKey(name: 'author_name') String authorName,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'body') String body,
    @JsonKey(name: 'country_code') String countryCode,
    @JsonKey(name: 'tags') List<String>? tags,
    @JsonKey(name: 'upvotes_count') int upvotesCount,
    @JsonKey(name: 'comments_count') int commentsCount,
    @JsonKey(name: 'comments') List<CommentDataResponse> comments,
    @JsonKey(name: 'is_upvoted') bool isUpvoted,
    @JsonKey(name: 'created_at') String createdAt,
  });
}

/// @nodoc
class __$$PostDataResponseImplCopyWithImpl<$Res>
    extends _$PostDataResponseCopyWithImpl<$Res, _$PostDataResponseImpl>
    implements _$$PostDataResponseImplCopyWith<$Res> {
  __$$PostDataResponseImplCopyWithImpl(
    _$PostDataResponseImpl _value,
    $Res Function(_$PostDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? authorName = null,
    Object? title = null,
    Object? body = null,
    Object? countryCode = null,
    Object? tags = freezed,
    Object? upvotesCount = null,
    Object? commentsCount = null,
    Object? comments = null,
    Object? isUpvoted = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$PostDataResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        author: null == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as String,
        authorName: null == authorName
            ? _value.authorName
            : authorName // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        countryCode: null == countryCode
            ? _value.countryCode
            : countryCode // ignore: cast_nullable_to_non_nullable
                  as String,
        tags: freezed == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        upvotesCount: null == upvotesCount
            ? _value.upvotesCount
            : upvotesCount // ignore: cast_nullable_to_non_nullable
                  as int,
        commentsCount: null == commentsCount
            ? _value.commentsCount
            : commentsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        comments: null == comments
            ? _value._comments
            : comments // ignore: cast_nullable_to_non_nullable
                  as List<CommentDataResponse>,
        isUpvoted: null == isUpvoted
            ? _value.isUpvoted
            : isUpvoted // ignore: cast_nullable_to_non_nullable
                  as bool,
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
class _$PostDataResponseImpl implements _PostDataResponse {
  const _$PostDataResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'author') required this.author,
    @JsonKey(name: 'author_name') required this.authorName,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'body') required this.body,
    @JsonKey(name: 'country_code') required this.countryCode,
    @JsonKey(name: 'tags') final List<String>? tags,
    @JsonKey(name: 'upvotes_count') required this.upvotesCount,
    @JsonKey(name: 'comments_count') required this.commentsCount,
    @JsonKey(name: 'comments')
    required final List<CommentDataResponse> comments,
    @JsonKey(name: 'is_upvoted') required this.isUpvoted,
    @JsonKey(name: 'created_at') required this.createdAt,
  }) : _tags = tags,
       _comments = comments;

  factory _$PostDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'author')
  final String author;
  @override
  @JsonKey(name: 'author_name')
  final String authorName;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'body')
  final String body;
  @override
  @JsonKey(name: 'country_code')
  final String countryCode;
  final List<String>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'upvotes_count')
  final int upvotesCount;
  @override
  @JsonKey(name: 'comments_count')
  final int commentsCount;
  final List<CommentDataResponse> _comments;
  @override
  @JsonKey(name: 'comments')
  List<CommentDataResponse> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  @JsonKey(name: 'is_upvoted')
  final bool isUpvoted;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'PostDataResponse(id: $id, author: $author, authorName: $authorName, title: $title, body: $body, countryCode: $countryCode, tags: $tags, upvotesCount: $upvotesCount, commentsCount: $commentsCount, comments: $comments, isUpvoted: $isUpvoted, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDataResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.upvotesCount, upvotesCount) ||
                other.upvotesCount == upvotesCount) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.isUpvoted, isUpvoted) ||
                other.isUpvoted == isUpvoted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    author,
    authorName,
    title,
    body,
    countryCode,
    const DeepCollectionEquality().hash(_tags),
    upvotesCount,
    commentsCount,
    const DeepCollectionEquality().hash(_comments),
    isUpvoted,
    createdAt,
  );

  /// Create a copy of PostDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDataResponseImplCopyWith<_$PostDataResponseImpl> get copyWith =>
      __$$PostDataResponseImplCopyWithImpl<_$PostDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PostDataResponseImplToJson(this);
  }
}

abstract class _PostDataResponse implements PostDataResponse {
  const factory _PostDataResponse({
    @JsonKey(name: 'id') required final String id,
    @JsonKey(name: 'author') required final String author,
    @JsonKey(name: 'author_name') required final String authorName,
    @JsonKey(name: 'title') required final String title,
    @JsonKey(name: 'body') required final String body,
    @JsonKey(name: 'country_code') required final String countryCode,
    @JsonKey(name: 'tags') final List<String>? tags,
    @JsonKey(name: 'upvotes_count') required final int upvotesCount,
    @JsonKey(name: 'comments_count') required final int commentsCount,
    @JsonKey(name: 'comments')
    required final List<CommentDataResponse> comments,
    @JsonKey(name: 'is_upvoted') required final bool isUpvoted,
    @JsonKey(name: 'created_at') required final String createdAt,
  }) = _$PostDataResponseImpl;

  factory _PostDataResponse.fromJson(Map<String, dynamic> json) =
      _$PostDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'author')
  String get author;
  @override
  @JsonKey(name: 'author_name')
  String get authorName;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'body')
  String get body;
  @override
  @JsonKey(name: 'country_code')
  String get countryCode;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags;
  @override
  @JsonKey(name: 'upvotes_count')
  int get upvotesCount;
  @override
  @JsonKey(name: 'comments_count')
  int get commentsCount;
  @override
  @JsonKey(name: 'comments')
  List<CommentDataResponse> get comments;
  @override
  @JsonKey(name: 'is_upvoted')
  bool get isUpvoted;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;

  /// Create a copy of PostDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostDataResponseImplCopyWith<_$PostDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
