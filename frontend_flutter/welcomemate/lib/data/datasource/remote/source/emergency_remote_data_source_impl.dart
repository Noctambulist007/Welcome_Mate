import 'package:welcomemate/data/datasource/remote/api/emergency_api.dart';
import 'package:welcomemate/data/repository/source/remote/emergency_remote_data_source.dart';
import 'package:welcomemate/domain/model/emergency/emergency.dart';

class EmergencyRemoteDataSourceImpl extends EmergencyRemoteDataSource {
  final EmergencyApi _emergencyApi;

  EmergencyRemoteDataSourceImpl({required EmergencyApi emergencyApi})
    : _emergencyApi = emergencyApi;

  @override
  Future<List<Emergency>> getEmergencyInfo({String? countryCode, int page = 1}) async {
    var response = await _emergencyApi.getEmergencyInfo(countryCode: countryCode, page: page);
    return response;
  }
}
