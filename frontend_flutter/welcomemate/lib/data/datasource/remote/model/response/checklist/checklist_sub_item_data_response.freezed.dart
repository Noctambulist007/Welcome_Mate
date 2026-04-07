// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_sub_item_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChecklistSubItemDataResponse _$ChecklistSubItemDataResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ChecklistSubItemDataResponse.fromJson(json);
}

/// @nodoc
mixin _$ChecklistSubItemDataResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'required_docs')
  List<String>? get requiredDocs => throw _privateConstructorUsedError;
  @JsonKey(name: 'order')
  int get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this ChecklistSubItemDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChecklistSubItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChecklistSubItemDataResponseCopyWith<ChecklistSubItemDataResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistSubItemDataResponseCopyWith<$Res> {
  factory $ChecklistSubItemDataResponseCopyWith(
    ChecklistSubItemDataResponse value,
    $Res Function(ChecklistSubItemDataResponse) then,
  ) =
      _$ChecklistSubItemDataResponseCopyWithImpl<
        $Res,
        ChecklistSubItemDataResponse
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'required_docs') List<String>? requiredDocs,
    @JsonKey(name: 'order') int order,
    @JsonKey(name: 'is_completed') bool isCompleted,
  });
}

/// @nodoc
class _$ChecklistSubItemDataResponseCopyWithImpl<
  $Res,
  $Val extends ChecklistSubItemDataResponse
>
    implements $ChecklistSubItemDataResponseCopyWith<$Res> {
  _$ChecklistSubItemDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChecklistSubItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? requiredDocs = freezed,
    Object? order = null,
    Object? isCompleted = null,
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
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            requiredDocs: freezed == requiredDocs
                ? _value.requiredDocs
                : requiredDocs // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChecklistSubItemDataResponseImplCopyWith<$Res>
    implements $ChecklistSubItemDataResponseCopyWith<$Res> {
  factory _$$ChecklistSubItemDataResponseImplCopyWith(
    _$ChecklistSubItemDataResponseImpl value,
    $Res Function(_$ChecklistSubItemDataResponseImpl) then,
  ) = __$$ChecklistSubItemDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'required_docs') List<String>? requiredDocs,
    @JsonKey(name: 'order') int order,
    @JsonKey(name: 'is_completed') bool isCompleted,
  });
}

/// @nodoc
class __$$ChecklistSubItemDataResponseImplCopyWithImpl<$Res>
    extends
        _$ChecklistSubItemDataResponseCopyWithImpl<
          $Res,
          _$ChecklistSubItemDataResponseImpl
        >
    implements _$$ChecklistSubItemDataResponseImplCopyWith<$Res> {
  __$$ChecklistSubItemDataResponseImplCopyWithImpl(
    _$ChecklistSubItemDataResponseImpl _value,
    $Res Function(_$ChecklistSubItemDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChecklistSubItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? requiredDocs = freezed,
    Object? order = null,
    Object? isCompleted = null,
  }) {
    return _then(
      _$ChecklistSubItemDataResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        requiredDocs: freezed == requiredDocs
            ? _value._requiredDocs
            : requiredDocs // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChecklistSubItemDataResponseImpl
    implements _ChecklistSubItemDataResponse {
  const _$ChecklistSubItemDataResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'required_docs') final List<String>? requiredDocs,
    @JsonKey(name: 'order') required this.order,
    @JsonKey(name: 'is_completed') required this.isCompleted,
  }) : _requiredDocs = requiredDocs;

  factory _$ChecklistSubItemDataResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ChecklistSubItemDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  final List<String>? _requiredDocs;
  @override
  @JsonKey(name: 'required_docs')
  List<String>? get requiredDocs {
    final value = _requiredDocs;
    if (value == null) return null;
    if (_requiredDocs is EqualUnmodifiableListView) return _requiredDocs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'order')
  final int order;
  @override
  @JsonKey(name: 'is_completed')
  final bool isCompleted;

  @override
  String toString() {
    return 'ChecklistSubItemDataResponse(id: $id, title: $title, description: $description, requiredDocs: $requiredDocs, order: $order, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistSubItemDataResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other._requiredDocs,
              _requiredDocs,
            ) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    const DeepCollectionEquality().hash(_requiredDocs),
    order,
    isCompleted,
  );

  /// Create a copy of ChecklistSubItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistSubItemDataResponseImplCopyWith<
    _$ChecklistSubItemDataResponseImpl
  >
  get copyWith =>
      __$$ChecklistSubItemDataResponseImplCopyWithImpl<
        _$ChecklistSubItemDataResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecklistSubItemDataResponseImplToJson(this);
  }
}

abstract class _ChecklistSubItemDataResponse
    implements ChecklistSubItemDataResponse {
  const factory _ChecklistSubItemDataResponse({
    @JsonKey(name: 'id') required final String id,
    @JsonKey(name: 'title') required final String title,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'required_docs') final List<String>? requiredDocs,
    @JsonKey(name: 'order') required final int order,
    @JsonKey(name: 'is_completed') required final bool isCompleted,
  }) = _$ChecklistSubItemDataResponseImpl;

  factory _ChecklistSubItemDataResponse.fromJson(Map<String, dynamic> json) =
      _$ChecklistSubItemDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'required_docs')
  List<String>? get requiredDocs;
  @override
  @JsonKey(name: 'order')
  int get order;
  @override
  @JsonKey(name: 'is_completed')
  bool get isCompleted;

  /// Create a copy of ChecklistSubItemDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChecklistSubItemDataResponseImplCopyWith<
    _$ChecklistSubItemDataResponseImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
