import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcomemate/domain/model/nav_item/navigation_item.dart';
import 'package:welcomemate/presentation/theme/color.dart';
import 'package:welcomemate/presentation/theme/text_theme.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  final int selectedIndex;
  final Function(int) onItemSelected;

  @override
  Widget build(BuildContext context) {
    var items = [
      NavigationItem(
        icon: "assets/icons/ic-home.svg",
        label: "Home",
      ),
      NavigationItem(
        icon: "assets/icons/ic-checklist.svg",
        label: "Checklist",
      ),
      NavigationItem(
        icon: "assets/icons/ic-community.svg",
        label: "Community",
      ),
      NavigationItem(
        icon: "assets/icons/ic-chat.svg",
        label: "Chat",
      ),
      NavigationItem(
        icon: "assets/icons/ic-more.svg",
        label: "More",
      ),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.transparent,
            iconTheme: WidgetStateProperty.resolveWith((states) {
              return IconThemeData(
                color: states.contains(WidgetState.selected)
                    ? AppColors.colorPrimary
                    : AppColors.grayscaleBorderDisabled,
                size: 24.r,
              );
            }),

            labelTextStyle: WidgetStateProperty.resolveWith((states) {
              return textTheme.bodyLarge?.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: states.contains(WidgetState.selected)
                    ? AppColors.grayscaleTextTitle
                    : AppColors.grayscaleBorderDisabled,
              );
            }),
          ),

          child: NavigationBar(
            height: 60.h,
            indicatorColor: AppColors.colorPrimary,
            selectedIndex: selectedIndex,
            onDestinationSelected: onItemSelected,
            backgroundColor: Colors.white,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
            destinations: items.map((item) {
              return NavigationDestination(
                label: item.label,
                icon: SvgPicture.asset(
                  item.icon,
                  width: 24.w,
                  height: 24.h,
                  colorFilter: ColorFilter.mode(
                    selectedIndex == items.indexOf(item)
                        ? AppColors.colorWhite
                        : AppColors.grayscaleBorderDisabled,
                    BlendMode.srcIn,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
