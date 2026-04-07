import 'package:welcomemate/domain/model/career/career.dart';

abstract class CareerRemoteDataSource {
  Future<List<Career>> getCareerResources({String? countryCode, int page = 1});
}
