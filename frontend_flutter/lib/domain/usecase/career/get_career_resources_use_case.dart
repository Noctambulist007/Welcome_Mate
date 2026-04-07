import 'package:welcomemate/domain/model/auth/user.dart';
import 'package:welcomemate/domain/model/career/career.dart';
import 'package:welcomemate/domain/model/guide/guide.dart';
import 'package:welcomemate/domain/repository/auth_repository.dart';
import 'package:welcomemate/domain/repository/career_repository.dart';
import 'package:welcomemate/domain/repository/guide_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class GetCareerResourcesUseCase {
  final CareerRepository _careerRepository;

  GetCareerResourcesUseCase({required CareerRepository careerRepository})
    : _careerRepository = careerRepository;

  Future<Result<List<Career>>> call({String? countryCode, int page = 1}) async {
    return await _careerRepository
        .getCareerResources(countryCode: countryCode, page: page)
        .then((career) => Result.success(career))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
