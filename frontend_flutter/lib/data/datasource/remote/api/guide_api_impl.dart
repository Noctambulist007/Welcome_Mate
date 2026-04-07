import 'package:welcomemate/data/datasource/remote/api/guide_api.dart';
import 'package:welcomemate/data/datasource/remote/model/response/guide/guide_response.dart';
import 'package:welcomemate/data/datasource/remote/util/api_client.dart';
import 'package:welcomemate/data/mapper/guide/guide_list_response_mapper.dart';
import 'package:welcomemate/domain/model/guide/guide.dart';

class GuideApiImpl extends GuideApi {
  final ApiClient _client;

  static const getGuideInfoUrl = 'guides';

  GuideApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<List<Guide>> getGuideInfo({String? countryCode, int page = 1}) async {
    try {
      final response = await _client.get<JSONObject, GuideResponse>(
        path: getGuideInfoUrl,
        queryParameters: {
          if (countryCode != null) 'country_code': countryCode,
          'page': page.toString(),
        },
        converter: (json) {
          return GuideResponse.fromJson(json);
        },
      );
      return response.toGuideList();
    } catch (e) {
      rethrow;
    }
  }
}
