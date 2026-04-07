import 'package:welcomemate/data/datasource/remote/model/response/checklist/checklist_sub_item_data_response.dart';
import 'package:welcomemate/domain/model/checklist/checklist_item.dart';

extension ChecklistSubItemResponseMapper on ChecklistSubItemDataResponse {
  ChecklistItem toChecklistSubItem() {
    return ChecklistItem(
      id: id,
      title: title,
      description: description,
      requiredDocs: requiredDocs,
      order: order,
      isCompleted: isCompleted,
    );
  }
}
