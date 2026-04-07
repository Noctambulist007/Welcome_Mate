import 'package:welcomemate/data/datasource/remote/model/request/checklist/checklist_update_request.dart';
import 'package:welcomemate/domain/model/checklist/checklist.dart';
import 'package:welcomemate/domain/model/checklist/checklist_update.dart';

abstract class ChecklistRepository {
  Future<List<Checklist>> getAllChecklists({String? countryCode, int page = 1});

  Future<ChecklistUpdate> updateChecklist({
    required ChecklistUpdateRequest requestBody,
  });
}

