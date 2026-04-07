import 'package:welcomemate/data/datasource/remote/model/response/guide/guide_item_data_response.dart';
import 'package:welcomemate/domain/model/guide/guide.dart';

extension GuideResponseMapper on GuideItemDataResponse {
  Guide toGuide() {
    return Guide(
      id: id,
      title: title,
      bodyMarkdown: bodyMarkdown,
      countryCode: countryCode,
      tags: tags,
      verifiedAt: verifiedAt,
      updatedAt: updatedAt,
    );
  }
}
