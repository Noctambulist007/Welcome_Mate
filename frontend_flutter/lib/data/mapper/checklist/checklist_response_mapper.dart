import 'package:welcomemate/data/datasource/remote/model/response/checklist/checklist_response.dart';
import 'package:welcomemate/data/mapper/checklist/checklist_item_response_mapper.dart';
import 'package:welcomemate/domain/model/checklist/checklist.dart';

extension ChecklistResponseMapper on ChecklistResponse {
  List<Checklist> toChecklist() {
    return data.results?.map((e) => e.toChecklistItem()).toList() ?? [];
  }
}
