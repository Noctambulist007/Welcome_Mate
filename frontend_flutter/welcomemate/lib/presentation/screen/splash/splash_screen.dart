import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animate_do/animate_do.dart';
import 'package:welcomemate/presentation/screen/auth/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/splash/notifier/provider.dart';
import 'package:welcomemate/presentation/theme/color.dart';
import 'package:welcomemate/presentation/util/routes.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    ref.listen(splashNotifierProvider, (previous, next) {
      next.when(
        initial: () {},
        loading: () {},
        authenticated: () {
          ref.read(authNotifierProvider.notifier).getUserInfo();
          Navigator.pushNamedAndRemoveUntil(
            context,
            Routes.main,
            (route) => false,
          );
        },
        unauthenticated: () {
          Navigator.pushReplacementNamed(context, Routes.login);
        },
        onboarding: () {
          Navigator.pushReplacementNamed(context, Routes.onboarding);
        },
      );
    });

    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -100,
              right: -100,
              child: FadeIn(
                duration: const Duration(milliseconds: 1500),
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        AppColors.colorPrimary.withOpacity(0.1),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: -150,
              left: -150,
              child: FadeIn(
                duration: const Duration(milliseconds: 1500),
                child: Container(
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        AppColors.colorPrimary.withOpacity(0.08),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ZoomIn(
                    duration: const Duration(milliseconds: 800),
                    child: Bounce(
                      delay: const Duration(milliseconds: 800),
                      duration: const Duration(milliseconds: 600),
                      child: Image.asset(
                        'assets/logo/app-logo.png',
                        height: 150.h,
                        width: 150.w,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  FadeInUp(
                    delay: const Duration(milliseconds: 400),
                    duration: const Duration(milliseconds: 800),
                    child: Text(
                      'Welcome Mate',
                      style: TextStyle(
                        color: AppColors.colorPrimary,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  FadeInUp(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 800),
                    child: Text(
                      'Your Journey Begins Here',
                      style: TextStyle(
                        color: AppColors.colorBlack.withOpacity(0.6),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: FadeInUp(
                delay: const Duration(milliseconds: 800),
                duration: const Duration(milliseconds: 600),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 32.h),
                  child: Pulse(
                    infinite: true,
                    duration: const Duration(milliseconds: 1500),
                    child: SizedBox(
                      width: 100.w,
                      child: LinearProgressIndicator(
                        color: AppColors.colorPrimary,
                        borderRadius: BorderRadius.circular(8.r),
                        backgroundColor: AppColors.grayscaleBorderDarker,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
