import 'package:welcomemate/domain/model/guide/guide.dart';

abstract class GuideApi {
  Future<List<Guide>> getGuideInfo({String? countryCode, int page = 1});
}

