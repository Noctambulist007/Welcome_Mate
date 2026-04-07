import 'package:welcomemate/data/repository/auth_repository_impl.dart';
import 'package:welcomemate/data/repository/career_repository_impl.dart';
import 'package:welcomemate/data/repository/chat_repository_impl.dart';
import 'package:welcomemate/data/repository/checklist_repository_impl.dart';
import 'package:welcomemate/data/repository/community_repository_impl.dart';
import 'package:welcomemate/data/repository/emergency_repository_impl.dart';
import 'package:welcomemate/data/repository/guide_repository_impl.dart';
import 'package:welcomemate/domain/repository/auth_repository.dart';
import 'package:welcomemate/domain/repository/career_repository.dart';
import 'package:welcomemate/domain/repository/chat_repository.dart';
import 'package:welcomemate/domain/repository/checklist_repository.dart';
import 'package:welcomemate/domain/repository/community_repository.dart';
import 'package:welcomemate/domain/repository/emergency_repository.dart';
import 'package:welcomemate/domain/repository/guide_repository.dart';
import 'package:welcomemate/domain/repository/settings_repository.dart';
import 'package:welcomemate/data/repository/settings_repository_impl.dart';
import 'package:welcomemate/injection_container.dart';

Future<void> setUpRepositoryModule() async {
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      authRemoteDataSource: getIt(),
      authLocalDataSource: getIt(),
    ),
  );

  getIt.registerLazySingleton<SettingsRepository>(
    () => SettingsRepositoryImpl(sharedPreferences: getIt()),
  );

  getIt.registerLazySingleton<GuideRepository>(
    () => GuideRepositoryImpl(guideRemoteDataSource: getIt()),
  );

  getIt.registerLazySingleton<CareerRepository>(
    () => CareerRepositoryImpl(careerRemoteDataSource: getIt()),
  );

  getIt.registerLazySingleton<EmergencyRepository>(
    () => EmergencyRepositoryImpl(emergencyRemoteDataSource: getIt()),
  );

  getIt.registerLazySingleton<ChatRepository>(
    () => ChatRepositoryImpl(chatRemoteDataSource: getIt()),
  );

  getIt.registerLazySingleton<CommunityRepository>(
        () => CommunityRepositoryImpl(communityRemoteDataSource: getIt()),
  );

  getIt.registerLazySingleton<ChecklistRepository>(
        () => ChecklistRepositoryImpl(checklistRemoteDataSource: getIt()),
  );
}
