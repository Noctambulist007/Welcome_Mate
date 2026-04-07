import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welcomemate/domain/model/emergency/emergency.dart';
import 'package:welcomemate/presentation/screen/auth/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/career/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/emergency/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/guide/notifier/provider.dart';
import 'package:welcomemate/presentation/theme/color.dart';
import 'package:welcomemate/presentation/util/routes.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(guideNotifierProvider.notifier).getGuideInfo();
      ref.read(careerNotifierProvider.notifier).getCareerResources();
      ref.read(emergencyNotifierProvider.notifier).getEmergencyInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    final userState = ref.watch(authNotifierProvider);

    String userName = 'User';
    String? userAvatar = '';
    userState.maybeWhen(
      successUserInfo: (user) {
        if (user != null && user.fullName.isNotEmpty) {
          userName = user.fullName.split(' ').first;
          userAvatar = user.avatar;
        }
      },
      orElse: () {},
    );

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: 120.h,
            floating: false,
            pinned: true,
            elevation: 0,
            backgroundColor: AppColors.colorPrimary,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 16.w, bottom: 16.h),
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 24.r,
                    backgroundColor: Colors.white,
                    backgroundImage: userAvatar != null
                        ? NetworkImage(userAvatar!)
                        : null,
                    child: userAvatar == null
                        ? Text(
                      userName[0].toUpperCase(),
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.colorPrimary,
                      ),
                    )
                        : null,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'Welcome, $userName!',
                    style: TextStyle(
                      color: AppColors.colorWhite,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.colorPrimary,
                      AppColors.primarySurfaceDarker,
                    ],
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Quick Actions',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grayscaleTextTitle,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  _buildQuickActions(),

                  SizedBox(height: 32.h),

                  _buildSectionHeader('Student Guides', Routes.guide),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, Routes.guide),
                    child: Container(
                      height: 150.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/img-guides.png'),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),

                  SizedBox(height: 32.h),

                  _buildSectionHeader('Career Resources', Routes.career),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, Routes.career),
                    child: Container(
                      height: 150.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/img-career.png'),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),

                  SizedBox(height: 32.h),

                  _buildSectionHeader('Emergency Info', Routes.emergency),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, Routes.emergency),
                    child: Container(
                      height: 150.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/img-emergency.png'),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),

                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActions() {
    return Row(
      children: [
        Expanded(
          child: _buildQuickActionCard(
            icon: Icons.checklist_rounded,
            title: 'Checklist',
            description: 'Track your tasks',
            color: AppColors.colorPrimary,
            onTap: () => Navigator.pushNamed(context, Routes.checklist),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: _buildQuickActionCard(
            icon: Icons.people,
            title: 'Community',
            description: 'Connect & share',
            color: AppColors.successSurfaceDefault,
            onTap: () => Navigator.pushNamed(context, Routes.community),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: _buildQuickActionCard(
            icon: Icons.smart_toy_outlined,
            title: 'AI Chat',
            description: 'Get instant help',
            color: AppColors.successSurfaceDefault,
            onTap: () => Navigator.pushNamed(context, Routes.chat),
          ),
        ),
      ],
    );
  }

  Widget _buildQuickActionCard({
    required IconData icon,
    required String title,
    required String description,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.colorWhite,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16.r),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Icon(icon, color: color, size: 28.w),
                ),
                SizedBox(height: 12.h),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grayscaleTextTitle,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 4.h),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: AppColors.grayscaleTextSubtitle,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title, String route) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.grayscaleTextTitle,
          ),
        ),
        InkWell(
          onTap: () => Navigator.pushNamed(context, route),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'View All',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.colorPrimary,
                ),
              ),
              SizedBox(width: 4.w),
              Icon(
                Icons.arrow_forward_ios,
                size: 10.w,
                color: AppColors.colorPrimary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
