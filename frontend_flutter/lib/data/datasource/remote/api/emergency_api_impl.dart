import 'package:welcomemate/data/datasource/remote/api/emergency_api.dart';
import 'package:welcomemate/data/datasource/remote/model/response/emergency/emergency_response.dart';
import 'package:welcomemate/data/datasource/remote/util/api_client.dart';
import 'package:welcomemate/data/mapper/emergency/emergency_list_response_mapper.dart';
import 'package:welcomemate/domain/model/emergency/emergency.dart';

class EmergencyApiImpl extends EmergencyApi {
  final ApiClient _client;

  static const getEmergencyInfoUrl = 'emergency';

  EmergencyApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<List<Emergency>> getEmergencyInfo({String? countryCode, int page = 1}) async {
    try {
      final response = await _client.get<JSONObject, EmergencyResponse>(
        path: getEmergencyInfoUrl,
        queryParameters: {
          if (countryCode != null) 'country_code': countryCode,
          'page': page.toString(),
        },
        converter: (json) {
          return EmergencyResponse.fromJson(json);
        },
      );
      return response.toEmergencyList();
    } catch (e) {
      rethrow;
    }
  }
}
