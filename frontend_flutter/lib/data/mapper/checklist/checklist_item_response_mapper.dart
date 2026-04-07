import 'package:welcomemate/data/datasource/remote/model/response/checklist/checklist_item_data_response.dart';
import 'package:welcomemate/data/mapper/checklist/checklist_sub_item_response_mapper.dart';
import 'package:welcomemate/domain/model/checklist/checklist.dart';

extension ChecklistItemResponseMapper on ChecklistItemDataResponse {
  Checklist toChecklistItem() {
    return Checklist(
      id: id,
      slug: slug,
      title: title,
      countryCode: countryCode,
      stage: stage,
      order: order,
      items: items?.map((e) => e.toChecklistSubItem()).toList(),
    );
  }
}
