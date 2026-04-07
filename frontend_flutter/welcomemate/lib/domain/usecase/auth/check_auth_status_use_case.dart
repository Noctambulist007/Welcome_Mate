import 'package:welcomemate/data/repository/source/local/auth_local_data_source.dart';

class CheckAuthStatusUseCase {
  final AuthLocalDataSource authLocalDataSource;

  CheckAuthStatusUseCase({required this.authLocalDataSource});

  Future<bool> call() async {
    final accessToken = authLocalDataSource.getAccessToken();
    final refreshToken = authLocalDataSource.getRefreshToken();
    print('CheckAuthStatusUseCase: accessToken: $accessToken, refreshToken: $refreshToken');
    return accessToken.isNotEmpty && refreshToken.isNotEmpty;
  }
}
