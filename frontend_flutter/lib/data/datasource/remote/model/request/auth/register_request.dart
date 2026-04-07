import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request.freezed.dart';

part 'register_request.g.dart';

@freezed
abstract class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'country_code') required String countryCode,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}
