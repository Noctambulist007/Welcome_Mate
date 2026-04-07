
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:welcomemate/data/datasource/remote/model/response/auth/user_data_response.dart';

part 'auth_data_response.freezed.dart';
part 'auth_data_response.g.dart';

@freezed
abstract class AuthDataResponse with _$AuthDataResponse {
  const factory AuthDataResponse({
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'refreshToken') required String refreshToken,
    @JsonKey(name: 'user') required UserDataResponse user,
  }) = _AuthDataResponse;

  factory AuthDataResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthDataResponseFromJson(json);
}
