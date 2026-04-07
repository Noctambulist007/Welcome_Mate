import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welcomemate/presentation/theme/app_theme.dart';
import 'package:welcomemate/presentation/util/routes.dart';

class WelcomeMate extends StatelessWidget {
  const WelcomeMate({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (_, __) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: MaterialApp(
          title: 'WelcomeMate',
          theme: AppTheme.light,
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splash,
          onGenerateRoute: Routes.generateRoutes,
        ),
      ),
    );
  }
}
