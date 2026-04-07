import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welcomemate/presentation/theme/color.dart';
import 'package:welcomemate/presentation/theme/text_styles.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final Widget icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Colors.red.shade50,
      borderRadius: BorderRadius.circular(30.r),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(color: const Color(0xFFEAF3FF)),
        ),
        padding: EdgeInsets.all(12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 16.w),
            Text(
              title,
              style: AppTextStyles.labelL4Medium
                  .copyWith(color: AppColors.grayscaleTextBody),
            ),
          ],
        ),
      ),
    );
  }
}
