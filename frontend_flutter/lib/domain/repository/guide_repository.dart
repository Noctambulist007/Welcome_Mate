import 'package:welcomemate/domain/model/guide/guide.dart';

abstract class GuideRepository {
  // get guide info
  Future<List<Guide>> getGuideInfo({String? countryCode, int page = 1});
}
