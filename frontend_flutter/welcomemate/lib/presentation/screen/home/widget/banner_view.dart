import 'package:flutter/material.dart';

class BannerView extends StatelessWidget {
  const BannerView({
    super.key,
    this.onBannerClicked,
    required this.imagePath,
  });

  final VoidCallback? onBannerClicked;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onBannerClicked,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(
          imagePath,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
