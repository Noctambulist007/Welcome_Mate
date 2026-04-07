// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_update_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChecklistUpdateDataResponse _$ChecklistUpdateDataResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ChecklistUpdateDataResponse.fromJson(json);
}

/// @nodoc
mixin _$ChecklistUpdateDataResponse {
  @JsonKey(name: 'ok')
  bool get ok => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed')
  bool get completed => throw _privateConstructorUsedError;

  /// Serializes this ChecklistUpdateDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChecklistUpdateDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChecklistUpdateDataResponseCopyWith<ChecklistUpdateDataResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChecklistUpdateDataResponseCopyWith<$Res> {
  factory $ChecklistUpdateDataResponseCopyWith(
    ChecklistUpdateDataResponse value,
    $Res Function(ChecklistUpdateDataResponse) then,
  ) =
      _$ChecklistUpdateDataResponseCopyWithImpl<
        $Res,
        ChecklistUpdateDataResponse
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'ok') bool ok,
    @JsonKey(name: 'completed') bool completed,
  });
}

/// @nodoc
class _$ChecklistUpdateDataResponseCopyWithImpl<
  $Res,
  $Val extends ChecklistUpdateDataResponse
>
    implements $ChecklistUpdateDataResponseCopyWith<$Res> {
  _$ChecklistUpdateDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChecklistUpdateDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ok = null, Object? completed = null}) {
    return _then(
      _value.copyWith(
            ok: null == ok
                ? _value.ok
                : ok // ignore: cast_nullable_to_non_nullable
                      as bool,
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
abstract class _$$ChecklistUpdateDataResponseImplCopyWith<$Res>
    implements $ChecklistUpdateDataResponseCopyWith<$Res> {
  factory _$$ChecklistUpdateDataResponseImplCopyWith(
    _$ChecklistUpdateDataResponseImpl value,
    $Res Function(_$ChecklistUpdateDataResponseImpl) then,
  ) = __$$ChecklistUpdateDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'ok') bool ok,
    @JsonKey(name: 'completed') bool completed,
  });
}

/// @nodoc
class __$$ChecklistUpdateDataResponseImplCopyWithImpl<$Res>
    extends
        _$ChecklistUpdateDataResponseCopyWithImpl<
          $Res,
          _$ChecklistUpdateDataResponseImpl
        >
    implements _$$ChecklistUpdateDataResponseImplCopyWith<$Res> {
  __$$ChecklistUpdateDataResponseImplCopyWithImpl(
    _$ChecklistUpdateDataResponseImpl _value,
    $Res Function(_$ChecklistUpdateDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChecklistUpdateDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ok = null, Object? completed = null}) {
    return _then(
      _$ChecklistUpdateDataResponseImpl(
        ok: null == ok
            ? _value.ok
            : ok // ignore: cast_nullable_to_non_nullable
                  as bool,
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
class _$ChecklistUpdateDataResponseImpl
    implements _ChecklistUpdateDataResponse {
  const _$ChecklistUpdateDataResponseImpl({
    @JsonKey(name: 'ok') required this.ok,
    @JsonKey(name: 'completed') required this.completed,
  });

  factory _$ChecklistUpdateDataResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ChecklistUpdateDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'ok')
  final bool ok;
  @override
  @JsonKey(name: 'completed')
  final bool completed;

  @override
  String toString() {
    return 'ChecklistUpdateDataResponse(ok: $ok, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChecklistUpdateDataResponseImpl &&
            (identical(other.ok, ok) || other.ok == ok) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ok, completed);

  /// Create a copy of ChecklistUpdateDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChecklistUpdateDataResponseImplCopyWith<_$ChecklistUpdateDataResponseImpl>
  get copyWith =>
      __$$ChecklistUpdateDataResponseImplCopyWithImpl<
        _$ChecklistUpdateDataResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChecklistUpdateDataResponseImplToJson(this);
  }
}

abstract class _ChecklistUpdateDataResponse
    implements ChecklistUpdateDataResponse {
  const factory _ChecklistUpdateDataResponse({
    @JsonKey(name: 'ok') required final bool ok,
    @JsonKey(name: 'completed') required final bool completed,
  }) = _$ChecklistUpdateDataResponseImpl;

  factory _ChecklistUpdateDataResponse.fromJson(Map<String, dynamic> json) =
      _$ChecklistUpdateDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'ok')
  bool get ok;
  @override
  @JsonKey(name: 'completed')
  bool get completed;

  /// Create a copy of ChecklistUpdateDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChecklistUpdateDataResponseImplCopyWith<_$ChecklistUpdateDataResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
