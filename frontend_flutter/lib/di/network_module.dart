import 'package:dio/dio.dart';
import 'package:welcomemate/data/datasource/remote/api/auth_api.dart';
import 'package:welcomemate/data/datasource/remote/api/auth_api_impl.dart';
import 'package:welcomemate/data/datasource/remote/api/career_api.dart';
import 'package:welcomemate/data/datasource/remote/api/career_api_impl.dart';
import 'package:welcomemate/data/datasource/remote/api/chat_api.dart';
import 'package:welcomemate/data/datasource/remote/api/chat_api_impl.dart';
import 'package:welcomemate/data/datasource/remote/api/checklist_api.dart';
import 'package:welcomemate/data/datasource/remote/api/checklist_api_impl.dart';
import 'package:welcomemate/data/datasource/remote/api/community_api.dart';
import 'package:welcomemate/data/datasource/remote/api/community_api_impl.dart';
import 'package:welcomemate/data/datasource/remote/api/emergency_api.dart';
import 'package:welcomemate/data/datasource/remote/api/emergency_api_impl.dart';
import 'package:welcomemate/data/datasource/remote/api/guide_api.dart';
import 'package:welcomemate/data/datasource/remote/api/guide_api_impl.dart';
import 'package:welcomemate/data/datasource/remote/util/api_client.dart';
import 'package:welcomemate/data/datasource/remote/util/auth_interceptor.dart';
import 'package:welcomemate/data/datasource/remote/util/logging_interceptor.dart';
import 'package:welcomemate/injection_container.dart';

Future<void> setUpNetworkModule() async {
  const int timeOut = 30;

  const baseUrl = 'http://10.0.2.2:8001/api/';

  getIt.registerLazySingleton<AuthInterceptor>(
    () => AuthInterceptor(authLocalDataSource: getIt()),
  );

  getIt.registerLazySingleton<LoggingInterceptor>(() => LoggingInterceptor());

  getIt.registerLazySingleton<Dio>(
    () =>
        Dio(
            BaseOptions(
              baseUrl: baseUrl,
              connectTimeout: const Duration(seconds: timeOut),
              receiveTimeout: const Duration(seconds: timeOut),
            ),
          )
          ..interceptors.addAll([
            getIt<AuthInterceptor>(),
            getIt<LoggingInterceptor>(),
          ]),
  );

  getIt.registerLazySingleton<ApiClient>(() => ApiClient(client: getIt()));

  getIt.registerLazySingleton<AuthApi>(() => AuthApiImpl(client: getIt()));

  getIt.registerLazySingleton<GuideApi>(() => GuideApiImpl(client: getIt()));

  getIt.registerLazySingleton<CareerApi>(() => CareerApiImpl(client: getIt()));

  getIt.registerLazySingleton<EmergencyApi>(
    () => EmergencyApiImpl(client: getIt()),
  );

  getIt.registerLazySingleton<ChatApi>(() => ChatApiImpl(client: getIt()));

  getIt.registerLazySingleton<CommunityApi>(() => CommunityApiImpl(client: getIt()));

  getIt.registerLazySingleton<ChecklistApi>(() => ChecklistApiImpl(client: getIt()));

}
