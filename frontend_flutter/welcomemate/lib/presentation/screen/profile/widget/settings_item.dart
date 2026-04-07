import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsItem extends StatelessWidget {
  final String iconPath;
  final String label;

  const SettingsItem({
    super.key,
    required this.iconPath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(iconPath),
        const SizedBox(width: 8),
        Text(label),
      ],
    );
  }
}
