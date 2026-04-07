import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welcomemate/domain/model/career/career.dart';
import 'package:welcomemate/presentation/screen/career/notifier/provider.dart';
import 'package:welcomemate/presentation/theme/color.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class CareerScreen extends ConsumerStatefulWidget {
  const CareerScreen({super.key});

  @override
  ConsumerState<CareerScreen> createState() => _CareerScreenState();
}

class _CareerScreenState extends ConsumerState<CareerScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  String _searchQuery = '';
  String? _selectedTag;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.9) {
      final state = ref.read(careerNotifierProvider);
      state.maybeWhen(
        success: (careers, hasMore) {
          if (hasMore) {
            ref.read(careerNotifierProvider.notifier).loadMore();
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
    final careerUiState = ref.watch(careerNotifierProvider);
    
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
            backgroundColor: AppColors.colorPrimary,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Career Resources',
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
                      AppColors.colorPrimary,
                      AppColors.primarySurfaceDarker,
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
                  hintText: 'Search career resources...',
                  hintStyle: TextStyle(
                    color: AppColors.grayscaleTextSubtitle,
                    fontSize: 14.sp,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.colorPrimary,
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
          
          careerUiState.when(
            initial: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
            loading: () => _buildShimmerLoading(),
            success: (careers, hasMore) => _buildCareersList(careers ?? []),
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
            width: double.infinity,
            height: 14.h,
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

  Widget _buildCareersList(List<Career> careers) {
    final filteredCareers = careers.where((career) {
      final matchesSearch = _searchQuery.isEmpty ||
          career.title.toLowerCase().contains(_searchQuery) ||
          career.bodyMarkdown.toLowerCase().contains(_searchQuery);
      
      final matchesTag = _selectedTag == null ||
          (career.tags?.contains(_selectedTag) ?? false);
      
      return matchesSearch && matchesTag;
    }).toList();

    final allTags = <String>{};
    for (var career in careers) {
      if (career.tags != null) {
        allTags.addAll(career.tags!);
      }
    }

    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (allTags.isNotEmpty) ...[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'Filter by Topic',
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
                        color: _selectedTag == null
                            ? AppColors.colorPrimary
                            : AppColors.grayscaleSurfaceSubtitle,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      selected: _selectedTag == null,
                      onSelected: (selected) {
                        setState(() {
                          _selectedTag = null;
                        });
                      },
                      selectedColor: AppColors.colorPrimary,
                      backgroundColor: AppColors.colorWhite,
                      labelStyle: TextStyle(
                        color: _selectedTag == null
                            ? AppColors.colorWhite
                            : AppColors.grayscaleTextBody,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      checkmarkColor: AppColors.colorWhite,
                    ),
                  ),
                  ...allTags.map((tag) => Padding(
                        padding: EdgeInsets.only(right: 8.w),
                        child: FilterChip(
                          label: Text(tag),
                          side: BorderSide(
                            color: _selectedTag == null
                                ? AppColors.colorPrimary
                                : AppColors.grayscaleSurfaceSubtitle,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          selected: _selectedTag == tag,
                          onSelected: (selected) {
                            setState(() {
                              _selectedTag = selected ? tag : null;
                            });
                          },
                          selectedColor: AppColors.colorPrimary,
                          backgroundColor: AppColors.colorWhite,
                          labelStyle: TextStyle(
                            color: _selectedTag == tag
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
              '${filteredCareers.length} ${filteredCareers.length == 1 ? 'Resource' : 'Resources'} Found',
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.grayscaleTextSubtitle,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          
          if (filteredCareers.isEmpty)
            _buildEmptyState()
          else
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemCount: filteredCareers.length,
              itemBuilder: (context, index) {
                return _buildCareerCard(filteredCareers[index]);
              },
            ),
        ],
      ),
    );
  }

  Widget _buildCareerCard(Career career) {
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16.r),
          onTap: () => _showCareerDetails(career),
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
                        color: AppColors.primarySurfaceSubtitle,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Icon(
                        Icons.work_outline_rounded,
                        color: AppColors.colorPrimary,
                        size: 20.w,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Text(
                        career.title,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grayscaleTextTitle,
                        ),
                      ),
                    ),
                    if (career.verifiedAt != null)
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.successSurfaceSubtitle,
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.verified,
                              color: AppColors.successSurfaceDefault,
                              size: 14.w,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              'Verified',
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.successSurfaceDefault,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
                
                SizedBox(height: 12.h),
                
                Text(
                  _getPreviewText(career.bodyMarkdown),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
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
                            career.countryCode,
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.grayscaleTextBody,
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    SizedBox(width: 8.w),
                    
                    if (career.tags != null && career.tags!.isNotEmpty)
                      Expanded(
                        child: Wrap(
                          spacing: 6.w,
                          runSpacing: 6.h,
                          children: career.tags!.take(3).map((tag) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 4.h,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.primarySurfaceSubtitle,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: Text(
                                tag,
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primarySurfaceDarker,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14.w,
                      color: AppColors.grayscaleTextSubtitle,
                    ),
                  ],
                ),
              ],
            ),
          ),
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
            'No resources found',
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
                ref.read(careerNotifierProvider.notifier).getCareerResources();
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.colorPrimary,
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

  String _getPreviewText(String markdown) {
    String preview = markdown
        .replaceAll(RegExp(r'#+ '), '')
        .replaceAll(RegExp(r'\*\*'), '')
        .replaceAll(RegExp(r'\n+'), ' ')
        .trim();
    return preview;
  }

  void _showCareerDetails(Career career) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.9,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        builder: (context, scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: AppColors.colorWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.r),
                topRight: Radius.circular(24.r),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12.h),
                  width: 40.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: AppColors.grayscaleSurfaceSubtitle,
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                ),
                
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          career.title,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.grayscaleTextTitle,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.close,
                          color: AppColors.grayscaleTextBody,
                        ),
                      ),
                    ],
                  ),
                ),
                
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
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
                              career.countryCode,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.grayscaleTextBody,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (career.verifiedAt != null) ...[
                        SizedBox(width: 8.w),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.successSurfaceSubtitle,
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.verified,
                                color: AppColors.successSurfaceDefault,
                                size: 14.w,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                'Verified',
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.successSurfaceDefault,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                
                SizedBox(height: 12.h),
                
                if (career.tags != null && career.tags!.isNotEmpty)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Wrap(
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: career.tags!.map((tag) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primarySurfaceSubtitle,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Text(
                            tag,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primarySurfaceDarker,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                
                SizedBox(height: 16.h),
                Divider(height: 1, color: AppColors.grayscaleSurfaceSubtitle),
                
                Expanded(
                  child: Markdown(
                    controller: scrollController,
                    data: career.bodyMarkdown,
                    padding: EdgeInsets.all(20.w),
                    styleSheet: MarkdownStyleSheet(
                      h1: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.grayscaleTextTitle,
                      ),
                      h2: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.grayscaleTextTitle,
                      ),
                      h3: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.grayscaleTextTitle,
                      ),
                      p: TextStyle(
                        fontSize: 15.sp,
                        color: AppColors.grayscaleTextBody,
                        height: 1.6,
                      ),
                      listBullet: TextStyle(
                        fontSize: 15.sp,
                        color: AppColors.colorPrimary,
                      ),
                      strong: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: AppColors.grayscaleTextTitle,
                      ),
                      code: TextStyle(
                        backgroundColor: AppColors.grayscaleSurfaceSubtitle,
                        color: AppColors.primarySurfaceDarker,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
