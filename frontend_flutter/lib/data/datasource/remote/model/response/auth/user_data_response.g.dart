// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataResponseImpl _$$UserDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$UserDataResponseImpl(
  id: json['id'] as String,
  email: json['email'] as String,
  fullName: json['full_name'] as String,
  countryCode: json['country_code'] as String,
  university: json['university'] as String?,
  preferredLang: json['preferred_lang'] as String,
  role: json['role'] as String,
  arrivalDate: json['arrival_date'] as String?,
  bio: json['bio'] as String,
  phoneNumber: json['phone_number'] as String,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$$UserDataResponseImplToJson(
  _$UserDataResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'full_name': instance.fullName,
  'country_code': instance.countryCode,
  'university': instance.university,
  'preferred_lang': instance.preferredLang,
  'role': instance.role,
  'arrival_date': instance.arrivalDate,
  'bio': instance.bio,
  'phone_number': instance.phoneNumber,
  'avatar': instance.avatar,
};
