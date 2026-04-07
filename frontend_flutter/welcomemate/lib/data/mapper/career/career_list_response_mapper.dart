import 'package:welcomemate/data/datasource/remote/model/response/career/career_response.dart';
import 'package:welcomemate/data/mapper/career/career_response_mapper.dart';
import 'package:welcomemate/domain/model/career/career.dart';

extension CareerListResponseMapper on CareerResponse {
  List<Career> toCareerList() {
    return data.results?.map((e) => e.toCareer()).toList() ?? [];
  }
}
