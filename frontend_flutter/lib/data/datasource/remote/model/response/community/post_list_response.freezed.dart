// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PostListResponse _$PostListResponseFromJson(Map<String, dynamic> json) {
  return _PostListResponse.fromJson(json);
}

/// @nodoc
mixin _$PostListResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  PostListDataResponse get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  String get timestamp => throw _privateConstructorUsedError;

  /// Serializes this PostListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostListResponseCopyWith<PostListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListResponseCopyWith<$Res> {
  factory $PostListResponseCopyWith(
    PostListResponse value,
    $Res Function(PostListResponse) then,
  ) = _$PostListResponseCopyWithImpl<$Res, PostListResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'success') bool success,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') PostListDataResponse data,
    @JsonKey(name: 'timestamp') String timestamp,
  });

  $PostListDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$PostListResponseCopyWithImpl<$Res, $Val extends PostListResponse>
    implements $PostListResponseCopyWith<$Res> {
  _$PostListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostListResponse
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
                      as PostListDataResponse,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of PostListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostListDataResponseCopyWith<$Res> get data {
    return $PostListDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostListResponseImplCopyWith<$Res>
    implements $PostListResponseCopyWith<$Res> {
  factory _$$PostListResponseImplCopyWith(
    _$PostListResponseImpl value,
    $Res Function(_$PostListResponseImpl) then,
  ) = __$$PostListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'success') bool success,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') PostListDataResponse data,
    @JsonKey(name: 'timestamp') String timestamp,
  });

  @override
  $PostListDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$PostListResponseImplCopyWithImpl<$Res>
    extends _$PostListResponseCopyWithImpl<$Res, _$PostListResponseImpl>
    implements _$$PostListResponseImplCopyWith<$Res> {
  __$$PostListResponseImplCopyWithImpl(
    _$PostListResponseImpl _value,
    $Res Function(_$PostListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostListResponse
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
      _$PostListResponseImpl(
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
                  as PostListDataResponse,
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
class _$PostListResponseImpl implements _PostListResponse {
  const _$PostListResponseImpl({
    @JsonKey(name: 'success') required this.success,
    @JsonKey(name: 'message') required this.message,
    @JsonKey(name: 'data') required this.data,
    @JsonKey(name: 'timestamp') required this.timestamp,
  });

  factory _$PostListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostListResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'data')
  final PostListDataResponse data;
  @override
  @JsonKey(name: 'timestamp')
  final String timestamp;

  @override
  String toString() {
    return 'PostListResponse(success: $success, message: $message, data: $data, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostListResponseImpl &&
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

  /// Create a copy of PostListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostListResponseImplCopyWith<_$PostListResponseImpl> get copyWith =>
      __$$PostListResponseImplCopyWithImpl<_$PostListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PostListResponseImplToJson(this);
  }
}

abstract class _PostListResponse implements PostListResponse {
  const factory _PostListResponse({
    @JsonKey(name: 'success') required final bool success,
    @JsonKey(name: 'message') required final String message,
    @JsonKey(name: 'data') required final PostListDataResponse data,
    @JsonKey(name: 'timestamp') required final String timestamp,
  }) = _$PostListResponseImpl;

  factory _PostListResponse.fromJson(Map<String, dynamic> json) =
      _$PostListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'data')
  PostListDataResponse get data;
  @override
  @JsonKey(name: 'timestamp')
  String get timestamp;

  /// Create a copy of PostListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostListResponseImplCopyWith<_$PostListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
