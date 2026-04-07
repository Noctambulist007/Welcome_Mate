import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welcomemate/presentation/screen/auth/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/career/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/chat/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/checklist/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/emergency/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/guide/notifier/provider.dart';
import 'package:welcomemate/presentation/theme/color.dart';
import 'package:welcomemate/presentation/util/routes.dart';

class MoreScreen extends ConsumerWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userUiState = ref.watch(authNotifierProvider);

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: userUiState.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                successUserInfo: (user) => Container(
                  margin: EdgeInsets.all(20.w),
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.colorPrimary,
                        AppColors.primarySurfaceDarker,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white.withOpacity(0.3),
                            width: 2,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 32.r,
                          backgroundColor: Colors.white,
                          backgroundImage: user?.avatar != null
                              ? NetworkImage(user!.avatar!)
                              : null,
                          child: user?.avatar == null
                              ? Text(
                                  user?.fullName.isNotEmpty ?? false
                                      ? user!.fullName[0].toUpperCase()
                                      : 'U',
                                  style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.colorPrimary,
                                  ),
                                )
                              : null,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user?.fullName ?? 'User',
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              user?.email ?? '',
                              style: TextStyle(
                                fontSize: 13.sp,
                                color: Colors.white.withOpacity(0.8),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.grayscaleTextSubtitle,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    _buildMenuCard(
                      context,
                      items: [
                        _MenuItem(
                          icon: Icons.person_outline,
                          title: 'Profile',
                          subtitle: 'Manage your profile',
                          onTap: () {
                            Navigator.pushNamed(context, Routes.profile);
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),
                    Text(
                      'Features',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.grayscaleTextSubtitle,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    _buildMenuCard(
                      context,
                      items: [
                        _MenuItem(
                          icon: Icons.school_outlined,
                          title: 'Career',
                          subtitle: 'Career resources',
                          onTap: () {
                            Navigator.pushNamed(context, Routes.career);
                          },
                        ),
                        _MenuItem(
                          icon: Icons.menu_book_outlined,
                          title: 'Guide',
                          subtitle: 'Helpful guides',
                          onTap: () {
                            Navigator.pushNamed(context, Routes.guide);
                          },
                        ),
                        _MenuItem(
                          icon: Icons.emergency_outlined,
                          title: 'Emergency',
                          subtitle: 'Emergency contacts',
                          onTap: () {
                            Navigator.pushNamed(context, Routes.emergency);
                          },
                        ),
                        // _MenuItem(
                        //   icon: Icons.location_on_outlined,
                        //   title: 'Nearby Places',
                        //   subtitle: 'Explore around you',
                        //   onTap: () {
                        //     Navigator.pushNamed(context, Routes.nearby);
                        //   },
                        // ),
                      ],
                    ),
                    SizedBox(height: 24.h),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.grayscaleTextSubtitle,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    _buildMenuCard(
                      context,
                      items: [
                        _MenuItem(
                          icon: Icons.logout_rounded,
                          title: 'Logout',
                          subtitle: 'Sign out of your account',
                          onTap: () {
                            _showLogoutDialog(context, ref);
                          },
                          isDanger: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context, {
    required List<_MenuItem> items,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.grayscaleBorderDefault, width: 1),
      ),
      child: Column(
        children: List.generate(items.length, (index) {
          final item = items[index];
          final isLast = index == items.length - 1;
          return Column(
            children: [
              _buildMenuItem(
                context,
                icon: item.icon,
                title: item.title,
                subtitle: item.subtitle,
                onTap: item.onTap,
                isDanger: item.isDanger,
              ),
              if (!isLast)
                Divider(
                  height: 1,
                  thickness: 1,
                  color: AppColors.grayscaleBorderDefault,
                  indent: 60.w,
                ),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildMenuItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    bool isDanger = false,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.r),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: isDanger
                    ? AppColors.dangerSurfaceSubtitle
                    : AppColors.primarySurfaceSubtitle,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(
                icon,
                color: isDanger
                    ? AppColors.dangerSurfaceDefault
                    : AppColors.colorPrimary,
                size: 22.sp,
              ),
            ),
            SizedBox(width: 14.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: isDanger
                          ? AppColors.dangerSurfaceDefault
                          : AppColors.grayscaleTextTitle,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.grayscaleTextSubtitle,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: AppColors.grayscaleIconLighter,
              size: 24.sp,
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text(
          'Logout',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
        content: Text(
          'Are you sure you want to logout?',
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColors.grayscaleTextSubtitle,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancel',
              style: TextStyle(
                color: AppColors.grayscaleTextSubtitle,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);
              await ref.read(authNotifierProvider.notifier).logout();
              
              ref.invalidate(checklistNotifierProvider);
              ref.invalidate(careerNotifierProvider);
              ref.invalidate(guideNotifierProvider);
              ref.invalidate(emergencyNotifierProvider);
              ref.invalidate(chatNotifierProvider);
              ref.invalidate(authNotifierProvider);

              if (context.mounted) {
                 Navigator.of(context).pushNamedAndRemoveUntil(
                  Routes.login,
                  (route) => false,
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.dangerSurfaceDefault,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              elevation: 0,
            ),
            child: Text(
              'Logout',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuItem {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool isDanger;

  _MenuItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.isDanger = false,
  });
}
