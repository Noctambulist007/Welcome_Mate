import 'package:welcomemate/data/repository/source/remote/guide_remote_data_source.dart';
import 'package:welcomemate/domain/model/guide/guide.dart';
import 'package:welcomemate/domain/repository/guide_repository.dart';

class GuideRepositoryImpl implements GuideRepository {
  final GuideRemoteDataSource guideRemoteDataSource;

  GuideRepositoryImpl({required this.guideRemoteDataSource});

  @override
  Future<List<Guide>> getGuideInfo({String? countryCode, int page = 1}) async {
    var response = await guideRemoteDataSource.getGuideInfo(
      countryCode: countryCode,
      page: page,
    );
    return response;
  }
}
