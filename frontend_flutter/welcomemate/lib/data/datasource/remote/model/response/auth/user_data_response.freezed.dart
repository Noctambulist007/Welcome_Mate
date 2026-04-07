// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserDataResponse _$UserDataResponseFromJson(Map<String, dynamic> json) {
  return _UserDataResponse.fromJson(json);
}

/// @nodoc
mixin _$UserDataResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'university')
  String? get university => throw _privateConstructorUsedError;
  @JsonKey(name: 'preferred_lang')
  String get preferredLang => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrival_date')
  String? get arrivalDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'bio')
  String get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this UserDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataResponseCopyWith<UserDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataResponseCopyWith<$Res> {
  factory $UserDataResponseCopyWith(
    UserDataResponse value,
    $Res Function(UserDataResponse) then,
  ) = _$UserDataResponseCopyWithImpl<$Res, UserDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'full_name') String fullName,
    @JsonKey(name: 'country_code') String countryCode,
    @JsonKey(name: 'university') String? university,
    @JsonKey(name: 'preferred_lang') String preferredLang,
    @JsonKey(name: 'role') String role,
    @JsonKey(name: 'arrival_date') String? arrivalDate,
    @JsonKey(name: 'bio') String bio,
    @JsonKey(name: 'phone_number') String phoneNumber,
    @JsonKey(name: 'avatar') String? avatar,
  });
}

/// @nodoc
class _$UserDataResponseCopyWithImpl<$Res, $Val extends UserDataResponse>
    implements $UserDataResponseCopyWith<$Res> {
  _$UserDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? fullName = null,
    Object? countryCode = null,
    Object? university = freezed,
    Object? preferredLang = null,
    Object? role = null,
    Object? arrivalDate = freezed,
    Object? bio = null,
    Object? phoneNumber = null,
    Object? avatar = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            countryCode: null == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                      as String,
            university: freezed == university
                ? _value.university
                : university // ignore: cast_nullable_to_non_nullable
                      as String?,
            preferredLang: null == preferredLang
                ? _value.preferredLang
                : preferredLang // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            arrivalDate: freezed == arrivalDate
                ? _value.arrivalDate
                : arrivalDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            bio: null == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            avatar: freezed == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserDataResponseImplCopyWith<$Res>
    implements $UserDataResponseCopyWith<$Res> {
  factory _$$UserDataResponseImplCopyWith(
    _$UserDataResponseImpl value,
    $Res Function(_$UserDataResponseImpl) then,
  ) = __$$UserDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'email') String email,
    @JsonKey(name: 'full_name') String fullName,
    @JsonKey(name: 'country_code') String countryCode,
    @JsonKey(name: 'university') String? university,
    @JsonKey(name: 'preferred_lang') String preferredLang,
    @JsonKey(name: 'role') String role,
    @JsonKey(name: 'arrival_date') String? arrivalDate,
    @JsonKey(name: 'bio') String bio,
    @JsonKey(name: 'phone_number') String phoneNumber,
    @JsonKey(name: 'avatar') String? avatar,
  });
}

/// @nodoc
class __$$UserDataResponseImplCopyWithImpl<$Res>
    extends _$UserDataResponseCopyWithImpl<$Res, _$UserDataResponseImpl>
    implements _$$UserDataResponseImplCopyWith<$Res> {
  __$$UserDataResponseImplCopyWithImpl(
    _$UserDataResponseImpl _value,
    $Res Function(_$UserDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? fullName = null,
    Object? countryCode = null,
    Object? university = freezed,
    Object? preferredLang = null,
    Object? role = null,
    Object? arrivalDate = freezed,
    Object? bio = null,
    Object? phoneNumber = null,
    Object? avatar = freezed,
  }) {
    return _then(
      _$UserDataResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        countryCode: null == countryCode
            ? _value.countryCode
            : countryCode // ignore: cast_nullable_to_non_nullable
                  as String,
        university: freezed == university
            ? _value.university
            : university // ignore: cast_nullable_to_non_nullable
                  as String?,
        preferredLang: null == preferredLang
            ? _value.preferredLang
            : preferredLang // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        arrivalDate: freezed == arrivalDate
            ? _value.arrivalDate
            : arrivalDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        bio: null == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        avatar: freezed == avatar
            ? _value.avatar
            : avatar // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataResponseImpl implements _UserDataResponse {
  const _$UserDataResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'email') required this.email,
    @JsonKey(name: 'full_name') required this.fullName,
    @JsonKey(name: 'country_code') required this.countryCode,
    @JsonKey(name: 'university') this.university,
    @JsonKey(name: 'preferred_lang') required this.preferredLang,
    @JsonKey(name: 'role') required this.role,
    @JsonKey(name: 'arrival_date') this.arrivalDate,
    @JsonKey(name: 'bio') required this.bio,
    @JsonKey(name: 'phone_number') required this.phoneNumber,
    @JsonKey(name: 'avatar') this.avatar,
  });

  factory _$UserDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'country_code')
  final String countryCode;
  @override
  @JsonKey(name: 'university')
  final String? university;
  @override
  @JsonKey(name: 'preferred_lang')
  final String preferredLang;
  @override
  @JsonKey(name: 'role')
  final String role;
  @override
  @JsonKey(name: 'arrival_date')
  final String? arrivalDate;
  @override
  @JsonKey(name: 'bio')
  final String bio;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;

  @override
  String toString() {
    return 'UserDataResponse(id: $id, email: $email, fullName: $fullName, countryCode: $countryCode, university: $university, preferredLang: $preferredLang, role: $role, arrivalDate: $arrivalDate, bio: $bio, phoneNumber: $phoneNumber, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.preferredLang, preferredLang) ||
                other.preferredLang == preferredLang) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.arrivalDate, arrivalDate) ||
                other.arrivalDate == arrivalDate) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    email,
    fullName,
    countryCode,
    university,
    preferredLang,
    role,
    arrivalDate,
    bio,
    phoneNumber,
    avatar,
  );

  /// Create a copy of UserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataResponseImplCopyWith<_$UserDataResponseImpl> get copyWith =>
      __$$UserDataResponseImplCopyWithImpl<_$UserDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataResponseImplToJson(this);
  }
}

abstract class _UserDataResponse implements UserDataResponse {
  const factory _UserDataResponse({
    @JsonKey(name: 'id') required final String id,
    @JsonKey(name: 'email') required final String email,
    @JsonKey(name: 'full_name') required final String fullName,
    @JsonKey(name: 'country_code') required final String countryCode,
    @JsonKey(name: 'university') final String? university,
    @JsonKey(name: 'preferred_lang') required final String preferredLang,
    @JsonKey(name: 'role') required final String role,
    @JsonKey(name: 'arrival_date') final String? arrivalDate,
    @JsonKey(name: 'bio') required final String bio,
    @JsonKey(name: 'phone_number') required final String phoneNumber,
    @JsonKey(name: 'avatar') final String? avatar,
  }) = _$UserDataResponseImpl;

  factory _UserDataResponse.fromJson(Map<String, dynamic> json) =
      _$UserDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'country_code')
  String get countryCode;
  @override
  @JsonKey(name: 'university')
  String? get university;
  @override
  @JsonKey(name: 'preferred_lang')
  String get preferredLang;
  @override
  @JsonKey(name: 'role')
  String get role;
  @override
  @JsonKey(name: 'arrival_date')
  String? get arrivalDate;
  @override
  @JsonKey(name: 'bio')
  String get bio;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;

  /// Create a copy of UserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataResponseImplCopyWith<_$UserDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
