import 'package:welcomemate/data/datasource/remote/model/response/guide/guide_response.dart';
import 'package:welcomemate/data/mapper/guide/guide_response_mapper.dart';
import 'package:welcomemate/domain/model/guide/guide.dart';

extension GuideListResponseMapper on GuideResponse {
  List<Guide> toGuideList() {
    return data.results?.map((e) => e.toGuide()).toList() ?? [];
  }
}
