import 'package:welcomemate/data/datasource/remote/api/checklist_api.dart';
import 'package:welcomemate/data/datasource/remote/model/request/checklist/checklist_update_request.dart';
import 'package:welcomemate/data/repository/source/remote/checklist_remote_data_source.dart';
import 'package:welcomemate/domain/model/checklist/checklist.dart';
import 'package:welcomemate/domain/model/checklist/checklist_update.dart';

class ChecklistRemoteDataSourceImpl extends ChecklistRemoteDataSource {
  final ChecklistApi _checklistApi;

  ChecklistRemoteDataSourceImpl({required ChecklistApi checklistApi})
    : _checklistApi = checklistApi;

  @override
  Future<ChecklistUpdate> updateChecklist({
    required ChecklistUpdateRequest requestBody,
  }) async {
    var response = await _checklistApi.updateChecklist(
      requestBody: requestBody,
    );
    return response;
  }

  @override
  Future<List<Checklist>> getAllChecklists({
    String? countryCode,
    int page = 1,
  }) async {
    var response = await _checklistApi.getAllChecklists(
      countryCode: countryCode,
      page: page,
    );
    return response;
  }
}
