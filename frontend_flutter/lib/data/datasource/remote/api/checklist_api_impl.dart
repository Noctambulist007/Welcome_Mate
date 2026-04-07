import 'package:welcomemate/data/datasource/remote/api/checklist_api.dart';
import 'package:welcomemate/data/datasource/remote/model/request/checklist/checklist_update_request.dart';
import 'package:welcomemate/data/datasource/remote/model/response/checklist/checklist_response.dart';
import 'package:welcomemate/data/datasource/remote/model/response/checklist/checklist_update_response.dart';
import 'package:welcomemate/data/datasource/remote/util/api_client.dart';
import 'package:welcomemate/data/mapper/checklist/checklist_response_mapper.dart';
import 'package:welcomemate/data/mapper/checklist/checklist_update_response_mapper.dart';
import 'package:welcomemate/domain/model/checklist/checklist.dart';
import 'package:welcomemate/domain/model/checklist/checklist_update.dart';

class ChecklistApiImpl extends ChecklistApi {
  final ApiClient _client;

  static const getAllChecklistsUrl = 'checklists';
  static const updateChecklistUrl = 'users/me/checklist-progress';

  ChecklistApiImpl({required ApiClient client}) : _client = client;

  @override
  Future<List<Checklist>> getAllChecklists({
    String? countryCode,
    int page = 1,
  }) async {
    try {
      final response = await _client.get<JSONObject, ChecklistResponse>(
        path: getAllChecklistsUrl,
        queryParameters: {
          if (countryCode != null) 'country_code': countryCode,
          'page': page.toString(),
        },
        converter: (json) {
          return ChecklistResponse.fromJson(json);
        },
      );
      return response.toChecklist();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ChecklistUpdate> updateChecklist({
    required ChecklistUpdateRequest requestBody,
  }) async {
    try {
      final response = await _client.post<JSONObject, ChecklistUpdateResponse>(
        path: updateChecklistUrl,
        data: requestBody.toJson(),
        converter: (json) {
          return ChecklistUpdateResponse.fromJson(json);
        },
      );
      return response.data.toChecklistUpdate();
    } catch (e) {
      rethrow;
    }
  }
}
