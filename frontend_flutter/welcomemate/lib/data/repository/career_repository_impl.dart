import 'package:welcomemate/data/repository/source/remote/career_remote_data_source.dart';
import 'package:welcomemate/domain/model/career/career.dart';
import 'package:welcomemate/domain/repository/career_repository.dart';

class CareerRepositoryImpl implements CareerRepository {
  final CareerRemoteDataSource careerRemoteDataSource;

  CareerRepositoryImpl({required this.careerRemoteDataSource});

  @override
  Future<List<Career>> getCareerResources({String? countryCode, int page = 1}) async {
    var response = await careerRemoteDataSource.getCareerResources(
      countryCode: countryCode,
      page: page,
    );
    return response;
  }
}
