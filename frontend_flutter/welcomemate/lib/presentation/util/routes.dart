import 'package:flutter/material.dart';
import 'package:welcomemate/presentation/screen/auth/login_screen.dart';
import 'package:welcomemate/presentation/screen/auth/register_screen.dart';
import 'package:welcomemate/presentation/screen/career/career_screen.dart';
import 'package:welcomemate/presentation/screen/chat/chat_screen.dart';
import 'package:welcomemate/presentation/screen/checklist/checklist_screen.dart';
import 'package:welcomemate/presentation/screen/community/community_screen.dart';
import 'package:welcomemate/presentation/screen/emergency/emergency_screen.dart';
import 'package:welcomemate/presentation/screen/guide/guide_screen.dart';
import 'package:welcomemate/presentation/screen/home/home_screen.dart';
import 'package:welcomemate/presentation/screen/main/main_screen.dart';
import 'package:welcomemate/presentation/screen/more/more_screen.dart';
import 'package:welcomemate/presentation/screen/nearby/nearby_screen.dart';
import 'package:welcomemate/presentation/screen/profile/profile_screen.dart';
import 'package:welcomemate/presentation/screen/splash/splash_screen.dart';
import 'package:welcomemate/presentation/screen/onboarding/onboarding_screen.dart';

class Routes {
  static const String splash = 'splash';
  static const String onboarding = 'onboarding';
  static const String main = 'main';
  static const String login = 'login';
  static const String register = 'register';
  static const String home = 'home';
  static const String profile = 'profile';
  static const String more = 'more';
  static const String chat = 'chat';
  static const String checklist = 'checklist';
  static const String community = 'community';
  static const String career = 'career';
  static const String guide = 'guide';
  static const String emergency = 'emergency';
  static const String nearby = 'nearby';

  static PageRoute generateRoutes(RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) {
        switch (settings.name) {
          case splash:
            return const SplashScreen();
          case onboarding:
             return const OnboardingScreen();
          case main:
            return const MainScreen();
          case login:
            return const LoginScreen();
          case register:
            return const RegisterScreen();
          case home:
            return const HomeScreen();
          case profile:
            return const ProfileScreen();
            case more:
            return const MoreScreen();
            case chat:
              return ChatScreen(isPushed: true);
            case checklist:
              return const ChecklistScreen(isPushed: true);
            case community:
              return const CommunityScreen(isPushed: true);
            case career:
            return const CareerScreen();
            case guide:
            return const GuideScreen();
            case emergency:
            return const EmergencyScreen();
            case nearby:
            return const NearbyScreen();
          default:
            return const MainScreen();
        }
      },
    );
  }
}
