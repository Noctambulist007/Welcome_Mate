// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChecklistUpdateRequest _$ChecklistUpdateRequestFromJson(
  Map<String, dynamic> json,
) {
  return _ChecklistUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$ChecklistUpdateRequest {
  @JsonKey(name: 'itemId')
  String get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed')
  bool get completed => throw _privateConstructorUsedError;

  /// Serializes this ChecklistUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChecklistUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChecklistUpdateRequestCopyWith<ChecklistUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistUpdateRequestCopyWith<$Res> {
  factory $ChecklistUpdateRequestCopyWith(
    ChecklistUpdateRequest value,
    $Res Function(ChecklistUpdateRequest) then,
  ) = _$ChecklistUpdateRequestCopyWithImpl<$Res, ChecklistUpdateRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'itemId') String itemId,
    @JsonKey(name: 'completed') bool completed,
  });
}

/// @nodoc
class _$ChecklistUpdateRequestCopyWithImpl<
  $Res,
  $Val extends ChecklistUpdateRequest
>
    implements $ChecklistUpdateRequestCopyWith<$Res> {
  _$ChecklistUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChecklistUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? itemId = null, Object? completed = null}) {
    return _then(
      _value.copyWith(
            itemId: null == itemId
                ? _value.itemId
                : itemId // ignore: cast_nullable_to_non_nullable
                      as String,
            completed: null == completed
                ? _value.completed
                : completed // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChecklistUpdateRequestImplCopyWith<$Res>
    implements $ChecklistUpdateRequestCopyWith<$Res> {
  factory _$$ChecklistUpdateRequestImplCopyWith(
    _$ChecklistUpdateRequestImpl value,
    $Res Function(_$ChecklistUpdateRequestImpl) then,
  ) = __$$ChecklistUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'itemId') String itemId,
    @JsonKey(name: 'completed') bool completed,
  });
}

/// @nodoc
class __$$ChecklistUpdateRequestImplCopyWithImpl<$Res>
    extends
        _$ChecklistUpdateRequestCopyWithImpl<$Res, _$ChecklistUpdateRequestImpl>
    implements _$$ChecklistUpdateRequestImplCopyWith<$Res> {
  __$$ChecklistUpdateRequestImplCopyWithImpl(
    _$ChecklistUpdateRequestImpl _value,
    $Res Function(_$ChecklistUpdateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChecklistUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? itemId = null, Object? completed = null}) {
    return _then(
      _$ChecklistUpdateRequestImpl(
        itemId: null == itemId
            ? _value.itemId
            : itemId // ignore: cast_nullable_to_non_nullable
                  as String,
        completed: null == completed
            ? _value.completed
            : completed // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChecklistUpdateRequestImpl implements _ChecklistUpdateRequest {
  const _$ChecklistUpdateRequestImpl({
    @JsonKey(name: 'itemId') required this.itemId,
    @JsonKey(name: 'completed') required this.completed,
  });

  factory _$ChecklistUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChecklistUpdateRequestImplFromJson(json);

  @override
  @JsonKey(name: 'itemId')
  final String itemId;
  @override
  @JsonKey(name: 'completed')
  final bool completed;

  @override
  String toString() {
    return 'ChecklistUpdateRequest(itemId: $itemId, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistUpdateRequestImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, completed);

  /// Create a copy of ChecklistUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistUpdateRequestImplCopyWith<_$ChecklistUpdateRequestImpl>
  get copyWith =>
      __$$ChecklistUpdateRequestImplCopyWithImpl<_$ChecklistUpdateRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecklistUpdateRequestImplToJson(this);
  }
}

abstract class _ChecklistUpdateRequest implements ChecklistUpdateRequest {
  const factory _ChecklistUpdateRequest({
    @JsonKey(name: 'itemId') required final String itemId,
    @JsonKey(name: 'completed') required final bool completed,
  }) = _$ChecklistUpdateRequestImpl;

  factory _ChecklistUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$ChecklistUpdateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'itemId')
  String get itemId;
  @override
  @JsonKey(name: 'completed')
  bool get completed;

  /// Create a copy of ChecklistUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChecklistUpdateRequestImplCopyWith<_$ChecklistUpdateRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
