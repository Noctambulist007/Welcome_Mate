import 'package:welcomemate/domain/usecase/auth/check_auth_status_use_case.dart';
import 'package:welcomemate/domain/usecase/auth/get_user_info_use_case.dart';
import 'package:welcomemate/domain/usecase/auth/login_use_case.dart';
import 'package:welcomemate/domain/usecase/auth/register_use_case.dart';
import 'package:welcomemate/domain/usecase/auth/update_user_info_use_case.dart';
import 'package:welcomemate/domain/usecase/career/get_career_resources_use_case.dart';
import 'package:welcomemate/domain/usecase/chat/get_chat_history_use_case.dart';
import 'package:welcomemate/domain/usecase/chat/send_message_use_case.dart';
import 'package:welcomemate/domain/usecase/checklist/get_all_checklists_use_case.dart';
import 'package:welcomemate/domain/usecase/checklist/update_checklist_use_case.dart';
import 'package:welcomemate/domain/usecase/community/add_comment_use_case.dart';
import 'package:welcomemate/domain/usecase/community/create_post_use_case.dart';
import 'package:welcomemate/domain/usecase/community/get_all_posts_use_case.dart';
import 'package:welcomemate/domain/usecase/community/upvote_post_use_case.dart';
import 'package:welcomemate/domain/usecase/emergency/get_emergency_info_use_case.dart';
import 'package:welcomemate/domain/usecase/guide/get_guide_info_use_case.dart';
import 'package:welcomemate/domain/usecase/onboarding/check_onboarding_status_use_case.dart';
import 'package:welcomemate/domain/usecase/onboarding/set_onboarding_status_use_case.dart';
import 'package:welcomemate/injection_container.dart';

Future<void> setUpUseCaseModule() async {
  await setUpAuthUseCaseModule();
  await setUpOnboardingUseCaseModule();
  await setUpGuideUseCaseModule();
  await setUpCareerUseCaseModule();
  await setUpEmergencyUseCaseModule();
  await setUpChatUseCaseModule();
  await setUpCommunityUseCaseModule();
  await setUpChecklistUseCaseModule();
}

Future<void> setUpAuthUseCaseModule() async {
  getIt.registerLazySingleton(() => LoginUseCase(authRepository: getIt()));

  getIt.registerLazySingleton(() => RegisterUseCase(authRepository: getIt()));

  getIt.registerLazySingleton(
    () => GetUserInfoUseCase(authRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => UpdateUserInfoUseCase(authRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => CheckAuthStatusUseCase(authLocalDataSource: getIt()),
  );
}

Future<void> setUpOnboardingUseCaseModule() async {
  getIt.registerLazySingleton(
    () => CheckOnboardingStatusUseCase(settingsRepository: getIt()),
  );

  getIt.registerLazySingleton(
    () => SetOnboardingStatusUseCase(settingsRepository: getIt()),
  );
}

Future<void> setUpGuideUseCaseModule() async {
  getIt.registerLazySingleton(
    () => GetGuideInfoUseCase(guideRepository: getIt()),
  );
}

Future<void> setUpCareerUseCaseModule() async {
  getIt.registerLazySingleton(
    () => GetCareerResourcesUseCase(careerRepository: getIt()),
  );
}

Future<void> setUpEmergencyUseCaseModule() async {
  getIt.registerLazySingleton(
    () => GetEmergencyInfoUseCase(emergencyRepository: getIt()),
  );
}

Future<void> setUpChatUseCaseModule() async {
  getIt.registerLazySingleton(
        () => SendMessageUseCase(chatRepository: getIt()),
  );
  getIt.registerLazySingleton(
        () => GetChatHistoryUseCase(chatRepository: getIt()),
  );
}
Future<void> setUpCommunityUseCaseModule() async {
  getIt.registerLazySingleton(
        () => CreatePostUseCase(communityRepository: getIt()),
  );
  getIt.registerLazySingleton(
        () => GetAllPostsUseCase(communityRepository: getIt()),
  );
  getIt.registerLazySingleton(
        () => AddCommentUseCase(communityRepository: getIt()),
  );
  getIt.registerLazySingleton(
        () => UpvotePostUseCase(communityRepository: getIt()),
  );
}

Future<void> setUpChecklistUseCaseModule() async {
  getIt.registerLazySingleton(
        () => GetAllChecklistsUseCase(checklistRepository: getIt()),
  );

  getIt.registerLazySingleton(
        () => UpdateChecklistUseCase(checklistRepository: getIt()),
  );
}