import 'package:shared_preferences/shared_preferences.dart';
import 'package:welcomemate/injection_container.dart';

Future<void> setUpCacheModule() async {
  getIt.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );
}
