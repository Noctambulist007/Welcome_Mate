// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserRequest _$UserRequestFromJson(Map<String, dynamic> json) {
  return _UserRequest.fromJson(json);
}

/// @nodoc
mixin _$UserRequest {
  @JsonKey(name: 'email', includeIfNull: false)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name', includeIfNull: false)
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code', includeIfNull: false)
  String? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'university', includeIfNull: false)
  String? get university => throw _privateConstructorUsedError;
  @JsonKey(name: 'preferred_lang', includeIfNull: false)
  String? get preferredLang => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrival_date', includeIfNull: false)
  String? get arrivalDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'bio', includeIfNull: false)
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number', includeIfNull: false)
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar', includeIfNull: false)
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this UserRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRequestCopyWith<UserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestCopyWith<$Res> {
  factory $UserRequestCopyWith(
    UserRequest value,
    $Res Function(UserRequest) then,
  ) = _$UserRequestCopyWithImpl<$Res, UserRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'email', includeIfNull: false) String? email,
    @JsonKey(name: 'full_name', includeIfNull: false) String? fullName,
    @JsonKey(name: 'country_code', includeIfNull: false) String? countryCode,
    @JsonKey(name: 'university', includeIfNull: false) String? university,
    @JsonKey(name: 'preferred_lang', includeIfNull: false)
    String? preferredLang,
    @JsonKey(name: 'arrival_date', includeIfNull: false) String? arrivalDate,
    @JsonKey(name: 'bio', includeIfNull: false) String? bio,
    @JsonKey(name: 'phone_number', includeIfNull: false) String? phoneNumber,
    @JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
  });
}

/// @nodoc
class _$UserRequestCopyWithImpl<$Res, $Val extends UserRequest>
    implements $UserRequestCopyWith<$Res> {
  _$UserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? fullName = freezed,
    Object? countryCode = freezed,
    Object? university = freezed,
    Object? preferredLang = freezed,
    Object? arrivalDate = freezed,
    Object? bio = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
  }) {
    return _then(
      _value.copyWith(
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            countryCode: freezed == countryCode
                ? _value.countryCode
                : countryCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            university: freezed == university
                ? _value.university
                : university // ignore: cast_nullable_to_non_nullable
                      as String?,
            preferredLang: freezed == preferredLang
                ? _value.preferredLang
                : preferredLang // ignore: cast_nullable_to_non_nullable
                      as String?,
            arrivalDate: freezed == arrivalDate
                ? _value.arrivalDate
                : arrivalDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            bio: freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String?,
            phoneNumber: freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$UserRequestImplCopyWith<$Res>
    implements $UserRequestCopyWith<$Res> {
  factory _$$UserRequestImplCopyWith(
    _$UserRequestImpl value,
    $Res Function(_$UserRequestImpl) then,
  ) = __$$UserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'email', includeIfNull: false) String? email,
    @JsonKey(name: 'full_name', includeIfNull: false) String? fullName,
    @JsonKey(name: 'country_code', includeIfNull: false) String? countryCode,
    @JsonKey(name: 'university', includeIfNull: false) String? university,
    @JsonKey(name: 'preferred_lang', includeIfNull: false)
    String? preferredLang,
    @JsonKey(name: 'arrival_date', includeIfNull: false) String? arrivalDate,
    @JsonKey(name: 'bio', includeIfNull: false) String? bio,
    @JsonKey(name: 'phone_number', includeIfNull: false) String? phoneNumber,
    @JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
  });
}

/// @nodoc
class __$$UserRequestImplCopyWithImpl<$Res>
    extends _$UserRequestCopyWithImpl<$Res, _$UserRequestImpl>
    implements _$$UserRequestImplCopyWith<$Res> {
  __$$UserRequestImplCopyWithImpl(
    _$UserRequestImpl _value,
    $Res Function(_$UserRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? fullName = freezed,
    Object? countryCode = freezed,
    Object? university = freezed,
    Object? preferredLang = freezed,
    Object? arrivalDate = freezed,
    Object? bio = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
  }) {
    return _then(
      _$UserRequestImpl(
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        countryCode: freezed == countryCode
            ? _value.countryCode
            : countryCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        university: freezed == university
            ? _value.university
            : university // ignore: cast_nullable_to_non_nullable
                  as String?,
        preferredLang: freezed == preferredLang
            ? _value.preferredLang
            : preferredLang // ignore: cast_nullable_to_non_nullable
                  as String?,
        arrivalDate: freezed == arrivalDate
            ? _value.arrivalDate
            : arrivalDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        bio: freezed == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String?,
        phoneNumber: freezed == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$UserRequestImpl implements _UserRequest {
  const _$UserRequestImpl({
    @JsonKey(name: 'email', includeIfNull: false) this.email,
    @JsonKey(name: 'full_name', includeIfNull: false) this.fullName,
    @JsonKey(name: 'country_code', includeIfNull: false) this.countryCode,
    @JsonKey(name: 'university', includeIfNull: false) this.university,
    @JsonKey(name: 'preferred_lang', includeIfNull: false) this.preferredLang,
    @JsonKey(name: 'arrival_date', includeIfNull: false) this.arrivalDate,
    @JsonKey(name: 'bio', includeIfNull: false) this.bio,
    @JsonKey(name: 'phone_number', includeIfNull: false) this.phoneNumber,
    @JsonKey(name: 'avatar', includeIfNull: false) this.avatar,
  });

  factory _$UserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRequestImplFromJson(json);

  @override
  @JsonKey(name: 'email', includeIfNull: false)
  final String? email;
  @override
  @JsonKey(name: 'full_name', includeIfNull: false)
  final String? fullName;
  @override
  @JsonKey(name: 'country_code', includeIfNull: false)
  final String? countryCode;
  @override
  @JsonKey(name: 'university', includeIfNull: false)
  final String? university;
  @override
  @JsonKey(name: 'preferred_lang', includeIfNull: false)
  final String? preferredLang;
  @override
  @JsonKey(name: 'arrival_date', includeIfNull: false)
  final String? arrivalDate;
  @override
  @JsonKey(name: 'bio', includeIfNull: false)
  final String? bio;
  @override
  @JsonKey(name: 'phone_number', includeIfNull: false)
  final String? phoneNumber;
  @override
  @JsonKey(name: 'avatar', includeIfNull: false)
  final String? avatar;

  @override
  String toString() {
    return 'UserRequest(email: $email, fullName: $fullName, countryCode: $countryCode, university: $university, preferredLang: $preferredLang, arrivalDate: $arrivalDate, bio: $bio, phoneNumber: $phoneNumber, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.preferredLang, preferredLang) ||
                other.preferredLang == preferredLang) &&
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
    email,
    fullName,
    countryCode,
    university,
    preferredLang,
    arrivalDate,
    bio,
    phoneNumber,
    avatar,
  );

  /// Create a copy of UserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRequestImplCopyWith<_$UserRequestImpl> get copyWith =>
      __$$UserRequestImplCopyWithImpl<_$UserRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRequestImplToJson(this);
  }
}

abstract class _UserRequest implements UserRequest {
  const factory _UserRequest({
    @JsonKey(name: 'email', includeIfNull: false) final String? email,
    @JsonKey(name: 'full_name', includeIfNull: false) final String? fullName,
    @JsonKey(name: 'country_code', includeIfNull: false)
    final String? countryCode,
    @JsonKey(name: 'university', includeIfNull: false) final String? university,
    @JsonKey(name: 'preferred_lang', includeIfNull: false)
    final String? preferredLang,
    @JsonKey(name: 'arrival_date', includeIfNull: false)
    final String? arrivalDate,
    @JsonKey(name: 'bio', includeIfNull: false) final String? bio,
    @JsonKey(name: 'phone_number', includeIfNull: false)
    final String? phoneNumber,
    @JsonKey(name: 'avatar', includeIfNull: false) final String? avatar,
  }) = _$UserRequestImpl;

  factory _UserRequest.fromJson(Map<String, dynamic> json) =
      _$UserRequestImpl.fromJson;

  @override
  @JsonKey(name: 'email', includeIfNull: false)
  String? get email;
  @override
  @JsonKey(name: 'full_name', includeIfNull: false)
  String? get fullName;
  @override
  @JsonKey(name: 'country_code', includeIfNull: false)
  String? get countryCode;
  @override
  @JsonKey(name: 'university', includeIfNull: false)
  String? get university;
  @override
  @JsonKey(name: 'preferred_lang', includeIfNull: false)
  String? get preferredLang;
  @override
  @JsonKey(name: 'arrival_date', includeIfNull: false)
  String? get arrivalDate;
  @override
  @JsonKey(name: 'bio', includeIfNull: false)
  String? get bio;
  @override
  @JsonKey(name: 'phone_number', includeIfNull: false)
  String? get phoneNumber;
  @override
  @JsonKey(name: 'avatar', includeIfNull: false)
  String? get avatar;

  /// Create a copy of UserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRequestImplCopyWith<_$UserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
