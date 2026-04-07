import 'package:welcomemate/domain/model/auth/user.dart';
import 'package:welcomemate/domain/model/guide/guide.dart';
import 'package:welcomemate/domain/repository/auth_repository.dart';
import 'package:welcomemate/domain/repository/guide_repository.dart';
import 'package:welcomemate/domain/util/failure.dart';
import 'package:welcomemate/domain/util/result.dart';

class GetGuideInfoUseCase {
  final GuideRepository _guideRepository;

  GetGuideInfoUseCase({required GuideRepository guideRepository})
    : _guideRepository = guideRepository;

  Future<Result<List<Guide>>> call({String? countryCode, int page = 1}) async {
    return await _guideRepository
        .getGuideInfo(countryCode: countryCode, page: page)
        .then((guides) => Result.success(guides))
        .onError((Failure failure, stackTrace) => Result.failure(failure));
  }
}
