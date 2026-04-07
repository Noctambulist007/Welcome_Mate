// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRequestImpl _$$UserRequestImplFromJson(Map<String, dynamic> json) =>
    _$UserRequestImpl(
      email: json['email'] as String?,
      fullName: json['full_name'] as String?,
      countryCode: json['country_code'] as String?,
      university: json['university'] as String?,
      preferredLang: json['preferred_lang'] as String?,
      arrivalDate: json['arrival_date'] as String?,
      bio: json['bio'] as String?,
      phoneNumber: json['phone_number'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$UserRequestImplToJson(_$UserRequestImpl instance) =>
    <String, dynamic>{
      if (instance.email case final value?) 'email': value,
      if (instance.fullName case final value?) 'full_name': value,
      if (instance.countryCode case final value?) 'country_code': value,
      if (instance.university case final value?) 'university': value,
      if (instance.preferredLang case final value?) 'preferred_lang': value,
      if (instance.arrivalDate case final value?) 'arrival_date': value,
      if (instance.bio case final value?) 'bio': value,
      if (instance.phoneNumber case final value?) 'phone_number': value,
      if (instance.avatar case final value?) 'avatar': value,
    };
