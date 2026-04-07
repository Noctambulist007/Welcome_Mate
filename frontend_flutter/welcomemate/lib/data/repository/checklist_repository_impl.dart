import 'package:welcomemate/data/datasource/remote/model/request/checklist/checklist_update_request.dart';
import 'package:welcomemate/data/repository/source/remote/checklist_remote_data_source.dart';
import 'package:welcomemate/domain/model/checklist/checklist.dart';
import 'package:welcomemate/domain/model/checklist/checklist_update.dart';
import 'package:welcomemate/domain/repository/checklist_repository.dart';

class ChecklistRepositoryImpl implements ChecklistRepository {
  final ChecklistRemoteDataSource checklistRemoteDataSource;

  ChecklistRepositoryImpl({required this.checklistRemoteDataSource});

  @override
  Future<ChecklistUpdate> updateChecklist({
    required ChecklistUpdateRequest requestBody,
  }) async {
    var response = await checklistRemoteDataSource.updateChecklist(
      requestBody: requestBody,
    );
    return response;
  }

  @override
  Future<List<Checklist>> getAllChecklists({
    String? countryCode,
    int page = 1,
  }) async {
    var response = await checklistRemoteDataSource.getAllChecklists(
      countryCode: countryCode,
      page: page,
    );
    return response;
  }
}
