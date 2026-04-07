// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'career_item_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CareerItemDataResponse _$CareerItemDataResponseFromJson(
  Map<String, dynamic> json,
) {
  return _CareerItemDataResponse.fromJson(json);
}

/// @nodoc
mixin _$CareerItemDataResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_markdown')
  String get bodyMarkdown => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'verified_at')
  String? get verifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this CareerItemDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CareerItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CareerItemDataResponseCopyWith<CareerItemDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerItemDataResponseCopyWith<$Res> {
  factory $CareerItemDataResponseCopyWith(
    CareerItemDataResponse value,
    $Res Function(CareerItemDataResponse) then,
  ) = _$CareerItemDataResponseCopyWithImpl<$Res, CareerItemDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'body_markdown') String bodyMarkdown,
    @JsonKey(name: 'country_code') String countryCode,
    @JsonKey(name: 'tags') List<String>? tags,
    @JsonKey(name: 'verified_at') String? verifiedAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  });
}

/// @nodoc
class _$CareerItemDataResponseCopyWithImpl<
  $Res,
  $Val extends CareerItemDataResponse
>
    implements $CareerItemDataResponseCopyWith<$Res> {
  _$CareerItemDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CareerItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? bodyMarkdown = null,
    Object? countryCode = null,
    Object? tags = freezed,
    Object? verifiedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            bodyMarkdown: null == bodyMarkdown
                ? _value.bodyMarkdown
                : bodyMarkdown // ignore: cast_nullable_to_non_nullable
                      as String,
            countryCode: null == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                      as String,
            tags: freezed == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            verifiedAt: freezed == verifiedAt
                ? _value.verifiedAt
                : verifiedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CareerItemDataResponseImplCopyWith<$Res>
    implements $CareerItemDataResponseCopyWith<$Res> {
  factory _$$CareerItemDataResponseImplCopyWith(
    _$CareerItemDataResponseImpl value,
    $Res Function(_$CareerItemDataResponseImpl) then,
  ) = __$$CareerItemDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'body_markdown') String bodyMarkdown,
    @JsonKey(name: 'country_code') String countryCode,
    @JsonKey(name: 'tags') List<String>? tags,
    @JsonKey(name: 'verified_at') String? verifiedAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  });
}

/// @nodoc
class __$$CareerItemDataResponseImplCopyWithImpl<$Res>
    extends
        _$CareerItemDataResponseCopyWithImpl<$Res, _$CareerItemDataResponseImpl>
    implements _$$CareerItemDataResponseImplCopyWith<$Res> {
  __$$CareerItemDataResponseImplCopyWithImpl(
    _$CareerItemDataResponseImpl _value,
    $Res Function(_$CareerItemDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CareerItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? bodyMarkdown = null,
    Object? countryCode = null,
    Object? tags = freezed,
    Object? verifiedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$CareerItemDataResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        bodyMarkdown: null == bodyMarkdown
            ? _value.bodyMarkdown
            : bodyMarkdown // ignore: cast_nullable_to_non_nullable
                  as String,
        countryCode: null == countryCode
            ? _value.countryCode
            : countryCode // ignore: cast_nullable_to_non_nullable
                  as String,
        tags: freezed == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        verifiedAt: freezed == verifiedAt
            ? _value.verifiedAt
            : verifiedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CareerItemDataResponseImpl implements _CareerItemDataResponse {
  const _$CareerItemDataResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'body_markdown') required this.bodyMarkdown,
    @JsonKey(name: 'country_code') required this.countryCode,
    @JsonKey(name: 'tags') final List<String>? tags,
    @JsonKey(name: 'verified_at') this.verifiedAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  }) : _tags = tags;

  factory _$CareerItemDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareerItemDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'body_markdown')
  final String bodyMarkdown;
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
  @JsonKey(name: 'verified_at')
  final String? verifiedAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'CareerItemDataResponse(id: $id, title: $title, bodyMarkdown: $bodyMarkdown, countryCode: $countryCode, tags: $tags, verifiedAt: $verifiedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareerItemDataResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.bodyMarkdown, bodyMarkdown) ||
                other.bodyMarkdown == bodyMarkdown) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    bodyMarkdown,
    countryCode,
    const DeepCollectionEquality().hash(_tags),
    verifiedAt,
    updatedAt,
  );

  /// Create a copy of CareerItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CareerItemDataResponseImplCopyWith<_$CareerItemDataResponseImpl>
  get copyWith =>
      __$$CareerItemDataResponseImplCopyWithImpl<_$CareerItemDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CareerItemDataResponseImplToJson(this);
  }
}

abstract class _CareerItemDataResponse implements CareerItemDataResponse {
  const factory _CareerItemDataResponse({
    @JsonKey(name: 'id') required final String id,
    @JsonKey(name: 'title') required final String title,
    @JsonKey(name: 'body_markdown') required final String bodyMarkdown,
    @JsonKey(name: 'country_code') required final String countryCode,
    @JsonKey(name: 'tags') final List<String>? tags,
    @JsonKey(name: 'verified_at') final String? verifiedAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
  }) = _$CareerItemDataResponseImpl;

  factory _CareerItemDataResponse.fromJson(Map<String, dynamic> json) =
      _$CareerItemDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'body_markdown')
  String get bodyMarkdown;
  @override
  @JsonKey(name: 'country_code')
  String get countryCode;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags;
  @override
  @JsonKey(name: 'verified_at')
  String? get verifiedAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of CareerItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CareerItemDataResponseImplCopyWith<_$CareerItemDataResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
