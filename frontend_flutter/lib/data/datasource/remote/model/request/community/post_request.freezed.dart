// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PostRequest _$PostRequestFromJson(Map<String, dynamic> json) {
  return _PostRequest.fromJson(json);
}

/// @nodoc
mixin _$PostRequest {
  @JsonKey(name: 'title', includeIfNull: false)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body', includeIfNull: false)
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code', includeIfNull: false)
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags', includeIfNull: false)
  List<String>? get tags => throw _privateConstructorUsedError;

  /// Serializes this PostRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostRequestCopyWith<PostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostRequestCopyWith<$Res> {
  factory $PostRequestCopyWith(
    PostRequest value,
    $Res Function(PostRequest) then,
  ) = _$PostRequestCopyWithImpl<$Res, PostRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'title', includeIfNull: false) String title,
    @JsonKey(name: 'body', includeIfNull: false) String body,
    @JsonKey(name: 'country_code', includeIfNull: false) String countryCode,
    @JsonKey(name: 'tags', includeIfNull: false) List<String>? tags,
  });
}

/// @nodoc
class _$PostRequestCopyWithImpl<$Res, $Val extends PostRequest>
    implements $PostRequestCopyWith<$Res> {
  _$PostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? countryCode = null,
    Object? tags = freezed,
  }) {
    return _then(
      _value.copyWith(
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostRequestImplCopyWith<$Res>
    implements $PostRequestCopyWith<$Res> {
  factory _$$PostRequestImplCopyWith(
    _$PostRequestImpl value,
    $Res Function(_$PostRequestImpl) then,
  ) = __$$PostRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'title', includeIfNull: false) String title,
    @JsonKey(name: 'body', includeIfNull: false) String body,
    @JsonKey(name: 'country_code', includeIfNull: false) String countryCode,
    @JsonKey(name: 'tags', includeIfNull: false) List<String>? tags,
  });
}

/// @nodoc
class __$$PostRequestImplCopyWithImpl<$Res>
    extends _$PostRequestCopyWithImpl<$Res, _$PostRequestImpl>
    implements _$$PostRequestImplCopyWith<$Res> {
  __$$PostRequestImplCopyWithImpl(
    _$PostRequestImpl _value,
    $Res Function(_$PostRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? countryCode = null,
    Object? tags = freezed,
  }) {
    return _then(
      _$PostRequestImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostRequestImpl implements _PostRequest {
  const _$PostRequestImpl({
    @JsonKey(name: 'title', includeIfNull: false) required this.title,
    @JsonKey(name: 'body', includeIfNull: false) required this.body,
    @JsonKey(name: 'country_code', includeIfNull: false)
    required this.countryCode,
    @JsonKey(name: 'tags', includeIfNull: false) final List<String>? tags,
  }) : _tags = tags;

  factory _$PostRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostRequestImplFromJson(json);

  @override
  @JsonKey(name: 'title', includeIfNull: false)
  final String title;
  @override
  @JsonKey(name: 'body', includeIfNull: false)
  final String body;
  @override
  @JsonKey(name: 'country_code', includeIfNull: false)
  final String countryCode;
  final List<String>? _tags;
  @override
  @JsonKey(name: 'tags', includeIfNull: false)
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostRequest(title: $title, body: $body, countryCode: $countryCode, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    body,
    countryCode,
    const DeepCollectionEquality().hash(_tags),
  );

  /// Create a copy of PostRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostRequestImplCopyWith<_$PostRequestImpl> get copyWith =>
      __$$PostRequestImplCopyWithImpl<_$PostRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostRequestImplToJson(this);
  }
}

abstract class _PostRequest implements PostRequest {
  const factory _PostRequest({
    @JsonKey(name: 'title', includeIfNull: false) required final String title,
    @JsonKey(name: 'body', includeIfNull: false) required final String body,
    @JsonKey(name: 'country_code', includeIfNull: false)
    required final String countryCode,
    @JsonKey(name: 'tags', includeIfNull: false) final List<String>? tags,
  }) = _$PostRequestImpl;

  factory _PostRequest.fromJson(Map<String, dynamic> json) =
      _$PostRequestImpl.fromJson;

  @override
  @JsonKey(name: 'title', includeIfNull: false)
  String get title;
  @override
  @JsonKey(name: 'body', includeIfNull: false)
  String get body;
  @override
  @JsonKey(name: 'country_code', includeIfNull: false)
  String get countryCode;
  @override
  @JsonKey(name: 'tags', includeIfNull: false)
  List<String>? get tags;

  /// Create a copy of PostRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostRequestImplCopyWith<_$PostRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
