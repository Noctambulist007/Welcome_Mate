import 'package:welcomemate/data/datasource/remote/api/career_api.dart';
import 'package:welcomemate/data/repository/source/remote/career_remote_data_source.dart';
import 'package:welcomemate/domain/model/career/career.dart';

class CareerRemoteDataSourceImpl extends CareerRemoteDataSource {
  final CareerApi _careerApi;

  CareerRemoteDataSourceImpl({required CareerApi careerApi})
    : _careerApi = careerApi;

  @override
  Future<List<Career>> getCareerResources({String? countryCode, int page = 1}) async {
    var response = await _careerApi.getCareerResources(
      countryCode: countryCode, page: page,
    );
    return response;
  }
}
