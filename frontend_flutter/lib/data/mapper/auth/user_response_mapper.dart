import 'package:welcomemate/data/datasource/remote/model/response/auth/user_data_response.dart';
import 'package:welcomemate/domain/model/auth/user.dart';

extension UserResponseMapper on UserDataResponse {
  User toUser() {
    return User(
      id: id,
      email: email,
      fullName: fullName,
      countryCode: countryCode,
      university: university,
      preferredLang: preferredLang,
      role: role,
      arrivalDate: arrivalDate,
      bio: bio,
      phoneNumber: phoneNumber,
      avatar: avatar,
    );
  }
}
