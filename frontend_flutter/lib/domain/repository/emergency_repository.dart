import 'package:welcomemate/domain/model/emergency/emergency.dart';

abstract class EmergencyRepository {
  Future<List<Emergency>> getEmergencyInfo({String? countryCode, int page = 1});
}
