import 'package:flutter/material.dart';
import 'package:lottie_screen_onboarding_flutter/introduction.dart';
import 'package:lottie_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:welcomemate/domain/usecase/onboarding/set_onboarding_status_use_case.dart';
import 'package:welcomemate/injection_container.dart';
import 'package:welcomemate/presentation/util/routes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: Colors.white,
      introductionList: [
        Introduction(
          lottieUrl: 'assets/animations/welcome.json',
          title: 'Welcome to WelcomeMate',
          subTitle: 'Your personal companion for a better journey.',
        ),
        Introduction(
          lottieUrl: 'assets/animations/world_map.json',
          title: 'Learn & Grow',
          subTitle: 'Access resources and tools to help you succeed.',
        ),
        Introduction(
          lottieUrl: 'assets/animations/live_chatbot.json',
          title: 'AI Assistant',
          subTitle: 'Get instant help and support anytime, anywhere.',
        ),
      ],
      onTapSkipButton: () => _completeOnboarding(context),
      skipTextStyle: const TextStyle(color: Colors.blueGrey, fontSize: 18),
    );
  }

  Future<void> _completeOnboarding(BuildContext context) async {
    final setOnboardingStatus = getIt<SetOnboardingStatusUseCase>();
    await setOnboardingStatus(true);
    if (context.mounted) {
      Navigator.pushReplacementNamed(context, Routes.login);
    }
  }
}
