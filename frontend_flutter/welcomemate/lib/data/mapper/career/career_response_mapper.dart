import 'package:welcomemate/data/datasource/remote/model/response/career/career_item_data_response.dart';
import 'package:welcomemate/domain/model/career/career.dart';

extension CareerResponseMapper on CareerItemDataResponse {
  Career toCareer() {
    return Career(
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
