import 'package:welcomemate/domain/model/auth/user.dart';
import 'package:welcomemate/domain/model/emergency/emergency.dart';
import 'package:welcomemate/domain/model/guide/guide.dart';
import 'package:welcomemate/domain/repository/auth_repository.dart';
import 'package:welcomemate/domain/repository/emergency_repository.dart';
import 'package:welcomemate/domain/repository/guide_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class GetEmergencyInfoUseCase {
  final EmergencyRepository _emergencyRepository;

  GetEmergencyInfoUseCase({required EmergencyRepository emergencyRepository})
    : _emergencyRepository = emergencyRepository;

  Future<Result<List<Emergency>>> call({String? countryCode, int page = 1}) async {
    return await _emergencyRepository
        .getEmergencyInfo(countryCode: countryCode, page: page)
        .then((emergencyInfo) => Result.success(emergencyInfo))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
