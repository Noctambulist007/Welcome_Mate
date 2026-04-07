import 'package:welcomemate/data/datasource/remote/model/response/emergency/emergency_response.dart';
import 'package:welcomemate/data/mapper/emergency/emergency_response_mapper.dart';
import 'package:welcomemate/domain/model/emergency/emergency.dart';

extension EmergencyListResponseMapper on EmergencyResponse {
  List<Emergency> toEmergencyList() {
    return data.results?.map((e) => e.toEmergency()).toList() ?? [];
  }
}
