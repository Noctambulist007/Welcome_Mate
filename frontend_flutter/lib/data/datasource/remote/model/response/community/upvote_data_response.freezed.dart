// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upvote_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UpvoteDataResponse _$UpvoteDataResponseFromJson(Map<String, dynamic> json) {
  return _UpvoteDataResponse.fromJson(json);
}

/// @nodoc
mixin _$UpvoteDataResponse {
  @JsonKey(name: 'ok')
  bool get ok => throw _privateConstructorUsedError;
  @JsonKey(name: 'upvoted')
  bool get upvoted => throw _privateConstructorUsedError;

  /// Serializes this UpvoteDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpvoteDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpvoteDataResponseCopyWith<UpvoteDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpvoteDataResponseCopyWith<$Res> {
  factory $UpvoteDataResponseCopyWith(
    UpvoteDataResponse value,
    $Res Function(UpvoteDataResponse) then,
  ) = _$UpvoteDataResponseCopyWithImpl<$Res, UpvoteDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'ok') bool ok,
    @JsonKey(name: 'upvoted') bool upvoted,
  });
}

/// @nodoc
class _$UpvoteDataResponseCopyWithImpl<$Res, $Val extends UpvoteDataResponse>
    implements $UpvoteDataResponseCopyWith<$Res> {
  _$UpvoteDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpvoteDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ok = null, Object? upvoted = null}) {
    return _then(
      _value.copyWith(
            ok: null == ok
                ? _value.ok
                : ok // ignore: cast_nullable_to_non_nullable
                      as bool,
            upvoted: null == upvoted
                ? _value.upvoted
                : upvoted // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpvoteDataResponseImplCopyWith<$Res>
    implements $UpvoteDataResponseCopyWith<$Res> {
  factory _$$UpvoteDataResponseImplCopyWith(
    _$UpvoteDataResponseImpl value,
    $Res Function(_$UpvoteDataResponseImpl) then,
  ) = __$$UpvoteDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'ok') bool ok,
    @JsonKey(name: 'upvoted') bool upvoted,
  });
}

/// @nodoc
class __$$UpvoteDataResponseImplCopyWithImpl<$Res>
    extends _$UpvoteDataResponseCopyWithImpl<$Res, _$UpvoteDataResponseImpl>
    implements _$$UpvoteDataResponseImplCopyWith<$Res> {
  __$$UpvoteDataResponseImplCopyWithImpl(
    _$UpvoteDataResponseImpl _value,
    $Res Function(_$UpvoteDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpvoteDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ok = null, Object? upvoted = null}) {
    return _then(
      _$UpvoteDataResponseImpl(
        ok: null == ok
            ? _value.ok
            : ok // ignore: cast_nullable_to_non_nullable
                  as bool,
        upvoted: null == upvoted
            ? _value.upvoted
            : upvoted // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpvoteDataResponseImpl implements _UpvoteDataResponse {
  const _$UpvoteDataResponseImpl({
    @JsonKey(name: 'ok') required this.ok,
    @JsonKey(name: 'upvoted') required this.upvoted,
  });

  factory _$UpvoteDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpvoteDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'ok')
  final bool ok;
  @override
  @JsonKey(name: 'upvoted')
  final bool upvoted;

  @override
  String toString() {
    return 'UpvoteDataResponse(ok: $ok, upvoted: $upvoted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpvoteDataResponseImpl &&
            (identical(other.ok, ok) || other.ok == ok) &&
            (identical(other.upvoted, upvoted) || other.upvoted == upvoted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ok, upvoted);

  /// Create a copy of UpvoteDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpvoteDataResponseImplCopyWith<_$UpvoteDataResponseImpl> get copyWith =>
      __$$UpvoteDataResponseImplCopyWithImpl<_$UpvoteDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpvoteDataResponseImplToJson(this);
  }
}

abstract class _UpvoteDataResponse implements UpvoteDataResponse {
  const factory _UpvoteDataResponse({
    @JsonKey(name: 'ok') required final bool ok,
    @JsonKey(name: 'upvoted') required final bool upvoted,
  }) = _$UpvoteDataResponseImpl;

  factory _UpvoteDataResponse.fromJson(Map<String, dynamic> json) =
      _$UpvoteDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'ok')
  bool get ok;
  @override
  @JsonKey(name: 'upvoted')
  bool get upvoted;

  /// Create a copy of UpvoteDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpvoteDataResponseImplCopyWith<_$UpvoteDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
