// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthDataResponseImpl _$$AuthDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AuthDataResponseImpl(
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String,
  user: UserDataResponse.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AuthDataResponseImplToJson(
  _$AuthDataResponseImpl instance,
) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'user': instance.user,
};
