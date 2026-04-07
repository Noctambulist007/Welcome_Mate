import 'package:flutter/material.dart';
import 'package:welcomemate/presentation/theme/color.dart';
import 'package:welcomemate/presentation/theme/text_styles.dart';

class EditProfileHeader extends StatelessWidget {

  const EditProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.grayscaleSurfaceBackground,
                  shape: BoxShape.circle,
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: AppColors.grayscaleIconDefault,
                      width: 0.1,
                    ),
                  ),
                ),
                width: 120,
                height: 120,
                child: Center(
                  child: Text(
                    'WM',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 48,
                      color: AppColors.grayscaleTextBody,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            'User Name',
            style: AppTextStyles.headingH6Semibold.copyWith(
              color: AppColors.grayscaleTextBody,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'username@gmail.com',
            style: AppTextStyles.labelL5Regular.copyWith(
              color: AppColors.grayscaleTextSubtitle,
            ),
          ),
        ],
      ),
    );
  }
}
