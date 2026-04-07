import 'package:welcomemate/domain/model/emergency/emergency.dart';

abstract class EmergencyApi {
  Future<List<Emergency>> getEmergencyInfo({String? countryCode, int page = 1});
}

