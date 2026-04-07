import 'package:get_it/get_it.dart';
import 'package:welcomemate/di/cache_module.dart';
import 'package:welcomemate/di/data_source_module.dart';
import 'package:welcomemate/di/network_module.dart';
import 'package:welcomemate/di/repository_module.dart';
import 'package:welcomemate/di/service_module.dart';
import 'package:welcomemate/di/use_case_module.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  await setUpCacheModule();
  await getIt.allReady();
  await setUpNetworkModule();
  await setUpDataSourceModule();
  await setUpRepositoryModule();
  await setUpUseCaseModule();
  await setUpServiceModule();
}
