import 'package:shared_preferences/shared_preferences.dart';
import 'package:welcomemate/data/datasource/local/source/auth_local_data_source_impl.dart';
import 'package:welcomemate/data/datasource/remote/source/auth_remote_data_source_impl.dart';
import 'package:welcomemate/data/datasource/remote/source/career_remote_data_source_impl.dart';
import 'package:welcomemate/data/datasource/remote/source/chat_remote_data_source_impl.dart';
import 'package:welcomemate/data/datasource/remote/source/checklist_remote_data_source_impl.dart';
import 'package:welcomemate/data/datasource/remote/source/community_remote_data_source_impl.dart';
import 'package:welcomemate/data/datasource/remote/source/emergency_remote_data_source_impl.dart';
import 'package:welcomemate/data/datasource/remote/source/guide_remote_data_source_impl.dart';
import 'package:welcomemate/data/repository/source/local/auth_local_data_source.dart';
import 'package:welcomemate/data/repository/source/remote/auth_remote_data_source.dart';
import 'package:welcomemate/data/repository/source/remote/career_remote_data_source.dart';
import 'package:welcomemate/data/repository/source/remote/chat_remote_data_source.dart';
import 'package:welcomemate/data/repository/source/remote/checklist_remote_data_source.dart';
import 'package:welcomemate/data/repository/source/remote/community_remote_data_source.dart';
import 'package:welcomemate/data/repository/source/remote/emergency_remote_data_source.dart';
import 'package:welcomemate/data/repository/source/remote/guide_remote_data_source.dart';
import 'package:welcomemate/injection_container.dart';

Future<void> setUpDataSourceModule() async {
  await setUpLocalDataSourceModule();
  await setUpRemoteDataSourceModule();
}

Future<void> setUpLocalDataSourceModule() async {
  await getIt.isReady<SharedPreferences>();

  getIt.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(sharedPref: getIt()),
  );
}

Future<void> setUpRemoteDataSourceModule() async {
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(authApi: getIt()),
  );

  getIt.registerLazySingleton<GuideRemoteDataSource>(
    () => GuideRemoteDataSourceImpl(guideApi: getIt()),
  );

  getIt.registerLazySingleton<CareerRemoteDataSource>(
    () => CareerRemoteDataSourceImpl(careerApi: getIt()),
  );

  getIt.registerLazySingleton<EmergencyRemoteDataSource>(
    () => EmergencyRemoteDataSourceImpl(emergencyApi: getIt()),
  );

  getIt.registerLazySingleton<ChatRemoteDataSource>(
    () => ChatRemoteDataSourceImpl(chatApi: getIt()),
  );

  getIt.registerLazySingleton<CommunityRemoteDataSource>(
        () => CommunityRemoteDataSourceImpl(communityApi: getIt()),
  );

  getIt.registerLazySingleton<ChecklistRemoteDataSource>(
        () => ChecklistRemoteDataSourceImpl(checklistApi: getIt()),
  );
}
