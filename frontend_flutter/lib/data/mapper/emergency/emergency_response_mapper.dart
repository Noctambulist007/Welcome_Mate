import 'package:welcomemate/data/datasource/remote/model/response/emergency/emergency_item_data_response.dart';
import 'package:welcomemate/domain/model/emergency/emergency.dart';

extension EmergencyResponseMapper on EmergencyItemDataResponse {
  Emergency toEmergency() {
    return Emergency(
      id: id,
      name: name,
      number: number,
      description: description,
      countryCode: countryCode,
      type: type,
    );
  }
}
