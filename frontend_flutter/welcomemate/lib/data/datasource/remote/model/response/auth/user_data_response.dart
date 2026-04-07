
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_response.freezed.dart';
part 'user_data_response.g.dart';

@freezed
abstract class UserDataResponse with _$UserDataResponse {
  const factory UserDataResponse({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'country_code') required String countryCode,
    @JsonKey(name: 'university') String? university,
    @JsonKey(name: 'preferred_lang') required String preferredLang,
    @JsonKey(name: 'role') required String role,
    @JsonKey(name: 'arrival_date') String? arrivalDate,
    @JsonKey(name: 'bio') required String bio,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'avatar') String? avatar,

  }) = _UserDataResponse;

  factory UserDataResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDataResponseFromJson(json);
}