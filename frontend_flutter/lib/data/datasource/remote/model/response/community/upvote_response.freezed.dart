// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upvote_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UpvoteResponse _$UpvoteResponseFromJson(Map<String, dynamic> json) {
  return _UpvoteResponse.fromJson(json);
}

/// @nodoc
mixin _$UpvoteResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  UpvoteDataResponse get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  String get timestamp => throw _privateConstructorUsedError;

  /// Serializes this UpvoteResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpvoteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpvoteResponseCopyWith<UpvoteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpvoteResponseCopyWith<$Res> {
  factory $UpvoteResponseCopyWith(
    UpvoteResponse value,
    $Res Function(UpvoteResponse) then,
  ) = _$UpvoteResponseCopyWithImpl<$Res, UpvoteResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'success') bool success,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') UpvoteDataResponse data,
    @JsonKey(name: 'timestamp') String timestamp,
  });

  $UpvoteDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$UpvoteResponseCopyWithImpl<$Res, $Val extends UpvoteResponse>
    implements $UpvoteResponseCopyWith<$Res> {
  _$UpvoteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpvoteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as UpvoteDataResponse,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of UpvoteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpvoteDataResponseCopyWith<$Res> get data {
    return $UpvoteDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpvoteResponseImplCopyWith<$Res>
    implements $UpvoteResponseCopyWith<$Res> {
  factory _$$UpvoteResponseImplCopyWith(
    _$UpvoteResponseImpl value,
    $Res Function(_$UpvoteResponseImpl) then,
  ) = __$$UpvoteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'success') bool success,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') UpvoteDataResponse data,
    @JsonKey(name: 'timestamp') String timestamp,
  });

  @override
  $UpvoteDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$UpvoteResponseImplCopyWithImpl<$Res>
    extends _$UpvoteResponseCopyWithImpl<$Res, _$UpvoteResponseImpl>
    implements _$$UpvoteResponseImplCopyWith<$Res> {
  __$$UpvoteResponseImplCopyWithImpl(
    _$UpvoteResponseImpl _value,
    $Res Function(_$UpvoteResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpvoteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$UpvoteResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as UpvoteDataResponse,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpvoteResponseImpl implements _UpvoteResponse {
  const _$UpvoteResponseImpl({
    @JsonKey(name: 'success') required this.success,
    @JsonKey(name: 'message') required this.message,
    @JsonKey(name: 'data') required this.data,
    @JsonKey(name: 'timestamp') required this.timestamp,
  });

  factory _$UpvoteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpvoteResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'data')
  final UpvoteDataResponse data;
  @override
  @JsonKey(name: 'timestamp')
  final String timestamp;

  @override
  String toString() {
    return 'UpvoteResponse(success: $success, message: $message, data: $data, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpvoteResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, data, timestamp);

  /// Create a copy of UpvoteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpvoteResponseImplCopyWith<_$UpvoteResponseImpl> get copyWith =>
      __$$UpvoteResponseImplCopyWithImpl<_$UpvoteResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UpvoteResponseImplToJson(this);
  }
}

abstract class _UpvoteResponse implements UpvoteResponse {
  const factory _UpvoteResponse({
    @JsonKey(name: 'success') required final bool success,
    @JsonKey(name: 'message') required final String message,
    @JsonKey(name: 'data') required final UpvoteDataResponse data,
    @JsonKey(name: 'timestamp') required final String timestamp,
  }) = _$UpvoteResponseImpl;

  factory _UpvoteResponse.fromJson(Map<String, dynamic> json) =
      _$UpvoteResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'data')
  UpvoteDataResponse get data;
  @override
  @JsonKey(name: 'timestamp')
  String get timestamp;

  /// Create a copy of UpvoteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpvoteResponseImplCopyWith<_$UpvoteResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
