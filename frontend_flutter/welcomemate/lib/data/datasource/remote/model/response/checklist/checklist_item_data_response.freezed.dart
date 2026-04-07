// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_item_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChecklistItemDataResponse _$ChecklistItemDataResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ChecklistItemDataResponse.fromJson(json);
}

/// @nodoc
mixin _$ChecklistItemDataResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'stage')
  String get stage => throw _privateConstructorUsedError;
  @JsonKey(name: 'order')
  int get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<ChecklistSubItemDataResponse>? get items =>
      throw _privateConstructorUsedError;

  /// Serializes this ChecklistItemDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChecklistItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChecklistItemDataResponseCopyWith<ChecklistItemDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistItemDataResponseCopyWith<$Res> {
  factory $ChecklistItemDataResponseCopyWith(
    ChecklistItemDataResponse value,
    $Res Function(ChecklistItemDataResponse) then,
  ) = _$ChecklistItemDataResponseCopyWithImpl<$Res, ChecklistItemDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'slug') String slug,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'country_code') String countryCode,
    @JsonKey(name: 'stage') String stage,
    @JsonKey(name: 'order') int order,
    @JsonKey(name: 'items') List<ChecklistSubItemDataResponse>? items,
  });
}

/// @nodoc
class _$ChecklistItemDataResponseCopyWithImpl<
  $Res,
  $Val extends ChecklistItemDataResponse
>
    implements $ChecklistItemDataResponseCopyWith<$Res> {
  _$ChecklistItemDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChecklistItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? title = null,
    Object? countryCode = null,
    Object? stage = null,
    Object? order = null,
    Object? items = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            countryCode: null == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                      as String,
            stage: null == stage
                ? _value.stage
                : stage // ignore: cast_nullable_to_non_nullable
                      as String,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
            items: freezed == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ChecklistSubItemDataResponse>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChecklistItemDataResponseImplCopyWith<$Res>
    implements $ChecklistItemDataResponseCopyWith<$Res> {
  factory _$$ChecklistItemDataResponseImplCopyWith(
    _$ChecklistItemDataResponseImpl value,
    $Res Function(_$ChecklistItemDataResponseImpl) then,
  ) = __$$ChecklistItemDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'slug') String slug,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'country_code') String countryCode,
    @JsonKey(name: 'stage') String stage,
    @JsonKey(name: 'order') int order,
    @JsonKey(name: 'items') List<ChecklistSubItemDataResponse>? items,
  });
}

/// @nodoc
class __$$ChecklistItemDataResponseImplCopyWithImpl<$Res>
    extends
        _$ChecklistItemDataResponseCopyWithImpl<
          $Res,
          _$ChecklistItemDataResponseImpl
        >
    implements _$$ChecklistItemDataResponseImplCopyWith<$Res> {
  __$$ChecklistItemDataResponseImplCopyWithImpl(
    _$ChecklistItemDataResponseImpl _value,
    $Res Function(_$ChecklistItemDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChecklistItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? slug = null,
    Object? title = null,
    Object? countryCode = null,
    Object? stage = null,
    Object? order = null,
    Object? items = freezed,
  }) {
    return _then(
      _$ChecklistItemDataResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        countryCode: null == countryCode
            ? _value.countryCode
            : countryCode // ignore: cast_nullable_to_non_nullable
                  as String,
        stage: null == stage
            ? _value.stage
            : stage // ignore: cast_nullable_to_non_nullable
                  as String,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
        items: freezed == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ChecklistSubItemDataResponse>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChecklistItemDataResponseImpl implements _ChecklistItemDataResponse {
  const _$ChecklistItemDataResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'slug') required this.slug,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'country_code') required this.countryCode,
    @JsonKey(name: 'stage') required this.stage,
    @JsonKey(name: 'order') required this.order,
    @JsonKey(name: 'items') final List<ChecklistSubItemDataResponse>? items,
  }) : _items = items;

  factory _$ChecklistItemDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChecklistItemDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'slug')
  final String slug;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'country_code')
  final String countryCode;
  @override
  @JsonKey(name: 'stage')
  final String stage;
  @override
  @JsonKey(name: 'order')
  final int order;
  final List<ChecklistSubItemDataResponse>? _items;
  @override
  @JsonKey(name: 'items')
  List<ChecklistSubItemDataResponse>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChecklistItemDataResponse(id: $id, slug: $slug, title: $title, countryCode: $countryCode, stage: $stage, order: $order, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistItemDataResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    slug,
    title,
    countryCode,
    stage,
    order,
    const DeepCollectionEquality().hash(_items),
  );

  /// Create a copy of ChecklistItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistItemDataResponseImplCopyWith<_$ChecklistItemDataResponseImpl>
  get copyWith =>
      __$$ChecklistItemDataResponseImplCopyWithImpl<
        _$ChecklistItemDataResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecklistItemDataResponseImplToJson(this);
  }
}

abstract class _ChecklistItemDataResponse implements ChecklistItemDataResponse {
  const factory _ChecklistItemDataResponse({
    @JsonKey(name: 'id') required final String id,
    @JsonKey(name: 'slug') required final String slug,
    @JsonKey(name: 'title') required final String title,
    @JsonKey(name: 'country_code') required final String countryCode,
    @JsonKey(name: 'stage') required final String stage,
    @JsonKey(name: 'order') required final int order,
    @JsonKey(name: 'items') final List<ChecklistSubItemDataResponse>? items,
  }) = _$ChecklistItemDataResponseImpl;

  factory _ChecklistItemDataResponse.fromJson(Map<String, dynamic> json) =
      _$ChecklistItemDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'slug')
  String get slug;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'country_code')
  String get countryCode;
  @override
  @JsonKey(name: 'stage')
  String get stage;
  @override
  @JsonKey(name: 'order')
  int get order;
  @override
  @JsonKey(name: 'items')
  List<ChecklistSubItemDataResponse>? get items;

  /// Create a copy of ChecklistItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChecklistItemDataResponseImplCopyWith<_$ChecklistItemDataResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
