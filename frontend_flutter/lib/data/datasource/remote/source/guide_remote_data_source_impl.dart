import 'package:welcomemate/data/datasource/remote/api/guide_api.dart';
import 'package:welcomemate/data/repository/source/remote/guide_remote_data_source.dart';
import 'package:welcomemate/domain/model/guide/guide.dart';

class GuideRemoteDataSourceImpl extends GuideRemoteDataSource {
  final GuideApi _guideApi;

  GuideRemoteDataSourceImpl({required GuideApi guideApi})
    : _guideApi = guideApi;

  @override
  Future<List<Guide>> getGuideInfo({String? countryCode, int page = 1}) async {
    var response = await _guideApi.getGuideInfo(countryCode: countryCode, page: page);
    return response;
  }
}
