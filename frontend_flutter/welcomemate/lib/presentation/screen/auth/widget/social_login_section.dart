import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcomemate/presentation/screen/auth/widget/custom_icon_button.dart';

class SocialLoginSection extends ConsumerStatefulWidget {
  const SocialLoginSection({super.key});

  @override
  ConsumerState<SocialLoginSection> createState() => _SocialLoginSectionState();
}

class _SocialLoginSectionState extends ConsumerState<SocialLoginSection> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: CustomIconButton(
          title: 'Continue With Google',
          icon: SvgPicture.asset(
            'assets/icons/ic-google.svg',
            width: 32.w,
            height: 32.h,
            fit: BoxFit.scaleDown,
          ),
          onPressed: () {},
        ),
      ),
    ]);
  }
}
