import 'package:welcomemate/data/datasource/remote/api/career_api.dart';
import 'package:welcomemate/data/datasource/remote/model/response/career/career_response.dart';
import 'package:welcomemate/data/datasource/remote/util/api_client.dart';
import 'package:welcomemate/data/mapper/career/career_list_response_mapper.dart';
import 'package:welcomemate/domain/model/career/career.dart';

class CareerApiImpl extends CareerApi {
  final ApiClient _client;

  static const getCareerResourcesUrl = 'career';

  CareerApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<List<Career>> getCareerResources({String? countryCode, int page = 1}) async {
    try {
      final response = await _client.get<JSONObject, CareerResponse>(
        path: getCareerResourcesUrl,
        queryParameters: {
          if (countryCode != null) 'country_code': countryCode,
          'page': page.toString(),
        },
        converter: (json) {
          return CareerResponse.fromJson(json);
        },
      );
      return response.toCareerList();
    } catch (e) {
      rethrow;
    }
  }
}
