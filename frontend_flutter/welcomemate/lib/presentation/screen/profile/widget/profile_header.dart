import 'package:flutter/material.dart';
import 'package:welcomemate/presentation/theme/text_styles.dart';

class ProfileHeader extends StatelessWidget {
  final String avatarPath;
  final String name;
  final String badge;
  final VoidCallback onTap;

  const ProfileHeader({
    super.key,
    required this.avatarPath,
    required this.name,
    required this.badge,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset(avatarPath),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: AppTextStyles.labelL4Regular),
                  const SizedBox(height: 4),
                  Text(badge, style: AppTextStyles.labelL5Regular),
                ],
              ),
            ],
          ),
          const Icon(Icons.edit_outlined),
        ],
      ),
    );
  }
}
