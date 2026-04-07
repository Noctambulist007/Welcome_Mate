import 'package:welcomemate/domain/model/auth/user.dart';

class Auth {
  final String accessToken;
  final String refreshToken;
  final User user;

  Auth({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
  });
}