// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuthDataResponse _$AuthDataResponseFromJson(Map<String, dynamic> json) {
  return _AuthDataResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthDataResponse {
  @JsonKey(name: 'accessToken')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refreshToken')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserDataResponse get user => throw _privateConstructorUsedError;

  /// Serializes this AuthDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthDataResponseCopyWith<AuthDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataResponseCopyWith<$Res> {
  factory $AuthDataResponseCopyWith(
    AuthDataResponse value,
    $Res Function(AuthDataResponse) then,
  ) = _$AuthDataResponseCopyWithImpl<$Res, AuthDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'accessToken') String accessToken,
    @JsonKey(name: 'refreshToken') String refreshToken,
    @JsonKey(name: 'user') UserDataResponse user,
  });

  $UserDataResponseCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthDataResponseCopyWithImpl<$Res, $Val extends AuthDataResponse>
    implements $AuthDataResponseCopyWith<$Res> {
  _$AuthDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? user = null,
  }) {
    return _then(
      _value.copyWith(
            accessToken: null == accessToken
                ? _value.accessToken
                : accessToken // ignore: cast_nullable_to_non_nullable
                      as String,
            refreshToken: null == refreshToken
                ? _value.refreshToken
                : refreshToken // ignore: cast_nullable_to_non_nullable
                      as String,
            user: null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserDataResponse,
          )
          as $Val,
    );
  }

  /// Create a copy of AuthDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataResponseCopyWith<$Res> get user {
    return $UserDataResponseCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthDataResponseImplCopyWith<$Res>
    implements $AuthDataResponseCopyWith<$Res> {
  factory _$$AuthDataResponseImplCopyWith(
    _$AuthDataResponseImpl value,
    $Res Function(_$AuthDataResponseImpl) then,
  ) = __$$AuthDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'accessToken') String accessToken,
    @JsonKey(name: 'refreshToken') String refreshToken,
    @JsonKey(name: 'user') UserDataResponse user,
  });

  @override
  $UserDataResponseCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthDataResponseImplCopyWithImpl<$Res>
    extends _$AuthDataResponseCopyWithImpl<$Res, _$AuthDataResponseImpl>
    implements _$$AuthDataResponseImplCopyWith<$Res> {
  __$$AuthDataResponseImplCopyWithImpl(
    _$AuthDataResponseImpl _value,
    $Res Function(_$AuthDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? user = null,
  }) {
    return _then(
      _$AuthDataResponseImpl(
        accessToken: null == accessToken
            ? _value.accessToken
            : accessToken // ignore: cast_nullable_to_non_nullable
                  as String,
        refreshToken: null == refreshToken
            ? _value.refreshToken
            : refreshToken // ignore: cast_nullable_to_non_nullable
                  as String,
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserDataResponse,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthDataResponseImpl implements _AuthDataResponse {
  const _$AuthDataResponseImpl({
    @JsonKey(name: 'accessToken') required this.accessToken,
    @JsonKey(name: 'refreshToken') required this.refreshToken,
    @JsonKey(name: 'user') required this.user,
  });

  factory _$AuthDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'accessToken')
  final String accessToken;
  @override
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @override
  @JsonKey(name: 'user')
  final UserDataResponse user;

  @override
  String toString() {
    return 'AuthDataResponse(accessToken: $accessToken, refreshToken: $refreshToken, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthDataResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken, user);

  /// Create a copy of AuthDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthDataResponseImplCopyWith<_$AuthDataResponseImpl> get copyWith =>
      __$$AuthDataResponseImplCopyWithImpl<_$AuthDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthDataResponseImplToJson(this);
  }
}

abstract class _AuthDataResponse implements AuthDataResponse {
  const factory _AuthDataResponse({
    @JsonKey(name: 'accessToken') required final String accessToken,
    @JsonKey(name: 'refreshToken') required final String refreshToken,
    @JsonKey(name: 'user') required final UserDataResponse user,
  }) = _$AuthDataResponseImpl;

  factory _AuthDataResponse.fromJson(Map<String, dynamic> json) =
      _$AuthDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'accessToken')
  String get accessToken;
  @override
  @JsonKey(name: 'refreshToken')
  String get refreshToken;
  @override
  @JsonKey(name: 'user')
  UserDataResponse get user;

  /// Create a copy of AuthDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthDataResponseImplCopyWith<_$AuthDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
