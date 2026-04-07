// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guide_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GuideResponse _$GuideResponseFromJson(Map<String, dynamic> json) {
  return _GuideResponse.fromJson(json);
}

/// @nodoc
mixin _$GuideResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  GuideDataResponse get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  String get timestamp => throw _privateConstructorUsedError;

  /// Serializes this GuideResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuideResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuideResponseCopyWith<GuideResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideResponseCopyWith<$Res> {
  factory $GuideResponseCopyWith(
    GuideResponse value,
    $Res Function(GuideResponse) then,
  ) = _$GuideResponseCopyWithImpl<$Res, GuideResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'success') bool success,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') GuideDataResponse data,
    @JsonKey(name: 'timestamp') String timestamp,
  });

  $GuideDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$GuideResponseCopyWithImpl<$Res, $Val extends GuideResponse>
    implements $GuideResponseCopyWith<$Res> {
  _$GuideResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuideResponse
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
                      as GuideDataResponse,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of GuideResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GuideDataResponseCopyWith<$Res> get data {
    return $GuideDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GuideResponseImplCopyWith<$Res>
    implements $GuideResponseCopyWith<$Res> {
  factory _$$GuideResponseImplCopyWith(
    _$GuideResponseImpl value,
    $Res Function(_$GuideResponseImpl) then,
  ) = __$$GuideResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'success') bool success,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') GuideDataResponse data,
    @JsonKey(name: 'timestamp') String timestamp,
  });

  @override
  $GuideDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$GuideResponseImplCopyWithImpl<$Res>
    extends _$GuideResponseCopyWithImpl<$Res, _$GuideResponseImpl>
    implements _$$GuideResponseImplCopyWith<$Res> {
  __$$GuideResponseImplCopyWithImpl(
    _$GuideResponseImpl _value,
    $Res Function(_$GuideResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GuideResponse
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
      _$GuideResponseImpl(
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
                  as GuideDataResponse,
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
class _$GuideResponseImpl implements _GuideResponse {
  const _$GuideResponseImpl({
    @JsonKey(name: 'success') required this.success,
    @JsonKey(name: 'message') required this.message,
    @JsonKey(name: 'data') required this.data,
    @JsonKey(name: 'timestamp') required this.timestamp,
  });

  factory _$GuideResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuideResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'data')
  final GuideDataResponse data;
  @override
  @JsonKey(name: 'timestamp')
  final String timestamp;

  @override
  String toString() {
    return 'GuideResponse(success: $success, message: $message, data: $data, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuideResponseImpl &&
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

  /// Create a copy of GuideResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuideResponseImplCopyWith<_$GuideResponseImpl> get copyWith =>
      __$$GuideResponseImplCopyWithImpl<_$GuideResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuideResponseImplToJson(this);
  }
}

abstract class _GuideResponse implements GuideResponse {
  const factory _GuideResponse({
    @JsonKey(name: 'success') required final bool success,
    @JsonKey(name: 'message') required final String message,
    @JsonKey(name: 'data') required final GuideDataResponse data,
    @JsonKey(name: 'timestamp') required final String timestamp,
  }) = _$GuideResponseImpl;

  factory _GuideResponse.fromJson(Map<String, dynamic> json) =
      _$GuideResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'data')
  GuideDataResponse get data;
  @override
  @JsonKey(name: 'timestamp')
  String get timestamp;

  /// Create a copy of GuideResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuideResponseImplCopyWith<_$GuideResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
