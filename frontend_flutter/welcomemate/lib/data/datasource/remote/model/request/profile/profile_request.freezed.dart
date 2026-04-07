// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProfileRequest _$ProfileRequestFromJson(Map<String, dynamic> json) {
  return _ProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$ProfileRequest {
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'bio')
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'profilePic')
  String? get profilePic => throw _privateConstructorUsedError;

  /// Serializes this ProfileRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileRequestCopyWith<ProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileRequestCopyWith<$Res> {
  factory $ProfileRequestCopyWith(
    ProfileRequest value,
    $Res Function(ProfileRequest) then,
  ) = _$ProfileRequestCopyWithImpl<$Res, ProfileRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'bio') String? bio,
    @JsonKey(name: 'profilePic') String? profilePic,
  });
}

/// @nodoc
class _$ProfileRequestCopyWithImpl<$Res, $Val extends ProfileRequest>
    implements $ProfileRequestCopyWith<$Res> {
  _$ProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? bio = freezed,
    Object? profilePic = freezed,
  }) {
    return _then(
      _value.copyWith(
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            bio: freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String?,
            profilePic: freezed == profilePic
                ? _value.profilePic
                : profilePic // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfileRequestImplCopyWith<$Res>
    implements $ProfileRequestCopyWith<$Res> {
  factory _$$ProfileRequestImplCopyWith(
    _$ProfileRequestImpl value,
    $Res Function(_$ProfileRequestImpl) then,
  ) = __$$ProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'bio') String? bio,
    @JsonKey(name: 'profilePic') String? profilePic,
  });
}

/// @nodoc
class __$$ProfileRequestImplCopyWithImpl<$Res>
    extends _$ProfileRequestCopyWithImpl<$Res, _$ProfileRequestImpl>
    implements _$$ProfileRequestImplCopyWith<$Res> {
  __$$ProfileRequestImplCopyWithImpl(
    _$ProfileRequestImpl _value,
    $Res Function(_$ProfileRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? bio = freezed,
    Object? profilePic = freezed,
  }) {
    return _then(
      _$ProfileRequestImpl(
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        bio: freezed == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String?,
        profilePic: freezed == profilePic
            ? _value.profilePic
            : profilePic // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileRequestImpl implements _ProfileRequest {
  const _$ProfileRequestImpl({
    @JsonKey(name: 'fullName') this.fullName,
    @JsonKey(name: 'bio') this.bio,
    @JsonKey(name: 'profilePic') this.profilePic,
  });

  factory _$ProfileRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileRequestImplFromJson(json);

  @override
  @JsonKey(name: 'fullName')
  final String? fullName;
  @override
  @JsonKey(name: 'bio')
  final String? bio;
  @override
  @JsonKey(name: 'profilePic')
  final String? profilePic;

  @override
  String toString() {
    return 'ProfileRequest(fullName: $fullName, bio: $bio, profilePic: $profilePic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileRequestImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, bio, profilePic);

  /// Create a copy of ProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileRequestImplCopyWith<_$ProfileRequestImpl> get copyWith =>
      __$$ProfileRequestImplCopyWithImpl<_$ProfileRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileRequestImplToJson(this);
  }
}

abstract class _ProfileRequest implements ProfileRequest {
  const factory _ProfileRequest({
    @JsonKey(name: 'fullName') final String? fullName,
    @JsonKey(name: 'bio') final String? bio,
    @JsonKey(name: 'profilePic') final String? profilePic,
  }) = _$ProfileRequestImpl;

  factory _ProfileRequest.fromJson(Map<String, dynamic> json) =
      _$ProfileRequestImpl.fromJson;

  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'bio')
  String? get bio;
  @override
  @JsonKey(name: 'profilePic')
  String? get profilePic;

  /// Create a copy of ProfileRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileRequestImplCopyWith<_$ProfileRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
