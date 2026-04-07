import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_request.freezed.dart';
part 'user_request.g.dart';

@freezed
abstract class UserRequest with _$UserRequest {
  const factory UserRequest({
    @JsonKey(name: 'email', includeIfNull: false) String? email,
    @JsonKey(name: 'full_name', includeIfNull: false) String? fullName,
    @JsonKey(name: 'country_code', includeIfNull: false) String? countryCode,
    @JsonKey(name: 'university', includeIfNull: false) String? university,
    @JsonKey(name: 'preferred_lang', includeIfNull: false) String? preferredLang,
    @JsonKey(name: 'arrival_date', includeIfNull: false) String? arrivalDate,
    @JsonKey(name: 'bio', includeIfNull: false) String? bio,
    @JsonKey(name: 'phone_number', includeIfNull: false) String? phoneNumber,
    @JsonKey(name: 'avatar', includeIfNull: false) String? avatar,
  }) = _UserRequest;

  factory UserRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRequestFromJson(json);
}
