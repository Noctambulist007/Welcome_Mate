import 'package:welcomemate/data/repository/source/remote/emergency_remote_data_source.dart';
import 'package:welcomemate/domain/model/emergency/emergency.dart';
import 'package:welcomemate/domain/repository/emergency_repository.dart';

class EmergencyRepositoryImpl implements EmergencyRepository {
  final EmergencyRemoteDataSource emergencyRemoteDataSource;

  EmergencyRepositoryImpl({required this.emergencyRemoteDataSource});

  @override
  Future<List<Emergency>> getEmergencyInfo({String? countryCode, int page = 1}) async {
    var response = await emergencyRemoteDataSource.getEmergencyInfo(
      countryCode: countryCode,
      page: page,
    );
    return response;
  }
}
