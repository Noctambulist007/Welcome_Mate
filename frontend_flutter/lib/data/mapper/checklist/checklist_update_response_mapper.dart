import 'package:welcomemate/data/datasource/remote/model/response/checklist/checklist_update_data_response.dart';
import 'package:welcomemate/domain/model/checklist/checklist_update.dart';

extension ChecklistUpdateResponseMapper on ChecklistUpdateDataResponse {
  ChecklistUpdate toChecklistUpdate() {
    return ChecklistUpdate(
      ok: ok,
      completed: completed
    );
  }
}
