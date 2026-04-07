import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welcomemate/domain/model/emergency/emergency.dart';
import 'package:welcomemate/presentation/screen/emergency/notifier/provider.dart';
import 'package:welcomemate/presentation/theme/color.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyScreen extends ConsumerStatefulWidget {
  const EmergencyScreen({super.key});

  @override
  ConsumerState<EmergencyScreen> createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends ConsumerState<EmergencyScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  String _searchQuery = '';
  String? _selectedType;
  
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.9) {
      final state = ref.read(emergencyNotifierProvider);
      state.maybeWhen(
        success: (emergencies, hasMore) {
          if (hasMore) {
            ref.read(emergencyNotifierProvider.notifier).loadMore();
          }
        },
        orElse: () {},
      );
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final emergencyUiState = ref.watch(emergencyNotifierProvider);
    
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 120.h,
            floating: false,
            pinned: true,
            elevation: 0,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.colorWhite,
                size: 24.w,
              ),
              onPressed: () => Navigator.pop(context),
            ),
            backgroundColor: AppColors.dangerSurfaceDefault,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Emergency Contacts',
                style: TextStyle(
                  color: AppColors.colorWhite,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.dangerSurfaceDefault,
                      AppColors.dangerSurfaceDarker,
                    ],
                  ),
                ),
              ),
            ),
          ),
          
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: AppColors.colorWhite,
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value.toLowerCase();
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search emergency contacts...',
                  hintStyle: TextStyle(
                    color: AppColors.grayscaleTextSubtitle,
                    fontSize: 14.sp,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.dangerSurfaceDefault,
                    size: 20.w,
                  ),
                  suffixIcon: _searchQuery.isNotEmpty
                      ? IconButton(
                          icon: Icon(
                            Icons.clear,
                            color: AppColors.grayscaleTextSubtitle,
                            size: 20.w,
                          ),
                          onPressed: () {
                            _searchController.clear();
                            setState(() {
                              _searchQuery = '';
                            });
                          },
                        )
                      : null,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 12.h,
                  ),
                ),
              ),
            ),
          ),
          
          emergencyUiState.when(
            initial: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
            loading: () => _buildShimmerLoading(),
            success: (emergencies, hasMore) => _buildEmergenciesList(emergencies ?? []),
            error: (message) => _buildError(message),
          ),
        ],
      ),
    );
  }

  Widget _buildShimmerLoading() {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => _buildShimmerCard(),
          childCount: 5,
        ),
      ),
    );
  }

  Widget _buildShimmerCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(16.w),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200.w,
            height: 20.h,
            decoration: BoxDecoration(
              color: AppColors.grayscaleSurfaceSubtitle,
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: 150.w,
            height: 24.h,
            decoration: BoxDecoration(
              color: AppColors.grayscaleSurfaceSubtitle,
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            width: double.infinity,
            height: 14.h,
            decoration: BoxDecoration(
              color: AppColors.grayscaleSurfaceSubtitle,
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmergenciesList(List<Emergency> emergencies) {
    final filteredEmergencies = emergencies.where((emergency) {
      final matchesSearch = _searchQuery.isEmpty ||
          emergency.name.toLowerCase().contains(_searchQuery) ||
          emergency.number.toLowerCase().contains(_searchQuery) ||
          emergency.description.toLowerCase().contains(_searchQuery);
      
      final matchesType = _selectedType == null ||
          emergency.type == _selectedType;
      
      return matchesSearch && matchesType;
    }).toList();

    final allTypes = <String>{};
    for (var emergency in emergencies) {
      allTypes.add(emergency.type);
    }

    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (allTypes.isNotEmpty) ...[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'Filter by Type',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grayscaleTextTitle,
                ),
              ),
            ),
            SizedBox(height: 12.h),
            SizedBox(
              height: 40.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: FilterChip(
                      label: const Text('All'),
                      side: BorderSide(
                        color: _selectedType == null
                            ? AppColors.dangerSurfaceDefault
                            : AppColors.grayscaleSurfaceSubtitle,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      selected: _selectedType == null,
                      onSelected: (selected) {
                        setState(() {
                          _selectedType = null;
                        });
                      },
                      selectedColor: AppColors.dangerSurfaceDefault,
                      backgroundColor: AppColors.colorWhite,
                      labelStyle: TextStyle(
                        color: _selectedType == null
                            ? AppColors.colorWhite
                            : AppColors.grayscaleTextBody,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      checkmarkColor: AppColors.colorWhite,
                    ),
                  ),
                  ...allTypes.map((type) => Padding(
                        padding: EdgeInsets.only(right: 8.w),
                        child: FilterChip(
                          label: Text(_capitalizeType(type)),
                          side: BorderSide(
                            color: _selectedType == type
                                ? AppColors.dangerSurfaceDefault
                                : AppColors.grayscaleSurfaceSubtitle,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          selected: _selectedType == type,
                          onSelected: (selected) {
                            setState(() {
                              _selectedType = selected ? type : null;
                            });
                          },
                          selectedColor: AppColors.dangerSurfaceDefault,
                          backgroundColor: AppColors.colorWhite,
                          labelStyle: TextStyle(
                            color: _selectedType == type
                                ? AppColors.colorWhite
                                : AppColors.grayscaleTextBody,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          checkmarkColor: AppColors.colorWhite,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: 16.h),
          ],
          
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              '${filteredEmergencies.length} ${filteredEmergencies.length == 1 ? 'Contact' : 'Contacts'} Found',
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.grayscaleTextSubtitle,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          
          if (filteredEmergencies.isEmpty)
            _buildEmptyState()
          else
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemCount: filteredEmergencies.length,
              itemBuilder: (context, index) {
                return _buildEmergencyCard(filteredEmergencies[index]);
              },
            ),
        ],
      ),
    );
  }

  Widget _buildEmergencyCard(Emergency emergency) {
    final Color typeColor = _getTypeColor(emergency.type);
    final IconData typeIcon = _getTypeIcon(emergency.type);
    
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
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
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: typeColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Icon(
                    typeIcon,
                    color: typeColor,
                    size: 20.w,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        emergency.name,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grayscaleTextTitle,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 2.h,
                        ),
                        decoration: BoxDecoration(
                          color: typeColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Text(
                          _capitalizeType(emergency.type),
                          style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                            color: typeColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 16.h),
            
            Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: AppColors.grayscaleSurfaceGrayBackground,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: typeColor,
                    size: 20.w,
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Text(
                      emergency.number,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.grayscaleTextTitle,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 12.h),
            
            Text(
              emergency.description,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.grayscaleTextSubtitle,
                height: 1.4,
              ),
            ),
            
            SizedBox(height: 12.h),
            
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.secondarySurfaceSubtitle,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      color: AppColors.secondarySurfaceDefault,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.flag_outlined,
                        size: 12.w,
                        color: AppColors.grayscaleTextBody,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        emergency.countryCode,
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grayscaleTextBody,
                        ),
                      ),
                    ],
                  ),
                ),
                
                const Spacer(),
                
                ElevatedButton.icon(
                  onPressed: () => _makePhoneCall(emergency.number),
                  icon: Icon(
                    Icons.phone,
                    size: 18.w,
                  ),
                  label: const Text('Call Now'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: typeColor,
                    foregroundColor: AppColors.colorWhite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 10.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    elevation: 0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
      padding: EdgeInsets.all(32.w),
      decoration: BoxDecoration(
        color: AppColors.colorWhite,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          Icon(
            Icons.search_off,
            size: 64.w,
            color: AppColors.grayscaleTextSubtitle,
          ),
          SizedBox(height: 16.h),
          Text(
            'No contacts found',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.grayscaleTextTitle,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Try adjusting your search or filters',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.grayscaleTextSubtitle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildError(String message) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.all(16.w),
        padding: EdgeInsets.all(24.w),
        decoration: BoxDecoration(
          color: AppColors.colorWhite,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: AppColors.dangerBorderDefault,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Icon(
              Icons.error_outline,
              size: 48.w,
              color: AppColors.dangerSurfaceDefault,
            ),
            SizedBox(height: 16.h),
            Text(
              'Oops! Something went wrong',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.grayscaleTextTitle,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.grayscaleTextSubtitle,
              ),
            ),
            SizedBox(height: 16.h),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(emergencyNotifierProvider.notifier).getEmergencyInfo();
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.dangerSurfaceDefault,
                foregroundColor: AppColors.colorWhite,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 12.h,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _getTypeColor(String type) {
    switch (type.toLowerCase()) {
      case 'emergency':
        return AppColors.dangerSurfaceDefault;
      case 'helpline':
        return AppColors.colorPrimary;
      case 'embassy':
        return AppColors.secondaryTextDarker;
      default:
        return AppColors.grayscaleTextBody;
    }
  }

  IconData _getTypeIcon(String type) {
    switch (type.toLowerCase()) {
      case 'emergency':
        return Icons.emergency;
      case 'helpline':
        return Icons.support_agent;
      case 'embassy':
        return Icons.account_balance;
      default:
        return Icons.phone;
    }
  }

  String _capitalizeType(String type) {
    if (type.isEmpty) return type;
    return type[0].toUpperCase() + type.substring(1);
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    
    try {
      if (await canLaunchUrl(launchUri)) {
        await launchUrl(launchUri);
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Could not launch phone dialer'),
              backgroundColor: AppColors.dangerSurfaceDefault,
            ),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: ${e.toString()}'),
            backgroundColor: AppColors.dangerSurfaceDefault,
          ),
        );
      }
    }
  }
}
