import 'package:welcomemate/data/datasource/remote/model/response/auth/auth_data_response.dart';
import 'package:welcomemate/data/mapper/auth/user_response_mapper.dart';
import 'package:welcomemate/domain/model/auth/auth.dart';

extension AuthResponseMapper on AuthDataResponse {
  Auth toAuth() {
    return Auth(
      accessToken: accessToken,
      refreshToken: refreshToken,
      user: user.toUser(),
    );
  }
}
