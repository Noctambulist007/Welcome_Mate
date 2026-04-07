import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welcomemate/injection_container.dart' as di;
import 'package:welcomemate/welcome_mate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.setup();

  await ScreenUtil.ensureScreenSize();

  runApp(
    const ProviderScope(child: WelcomeMate()),
  );
}
