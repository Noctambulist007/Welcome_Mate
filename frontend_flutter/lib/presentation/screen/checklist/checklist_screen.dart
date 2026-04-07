import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:welcomemate/data/datasource/remote/model/request/checklist/checklist_update_request.dart';
import 'package:welcomemate/domain/model/checklist/checklist.dart';
import 'package:welcomemate/domain/model/checklist/checklist_item.dart';
import 'package:welcomemate/presentation/screen/checklist/notifier/provider.dart';
import 'package:welcomemate/presentation/theme/color.dart';

class ChecklistScreen extends ConsumerStatefulWidget {
  final bool isPushed;
  const ChecklistScreen({super.key, this.isPushed = false});

  @override
  ConsumerState<ChecklistScreen> createState() => _ChecklistScreenState();
}

class _ChecklistScreenState extends ConsumerState<ChecklistScreen> {
  final ScrollController _scrollController = ScrollController();
  final Map<String, bool> _expandedItems = {};

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.9) {
      final state = ref.read(checklistNotifierProvider);
      state.maybeWhen(
        successChecklists: (checklists, hasMore) {
          if (hasMore) {
            ref.read(checklistNotifierProvider.notifier).loadMore();
          }
        },
        orElse: () {},
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final checklistUiState = ref.watch(checklistNotifierProvider);

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(checklistNotifierProvider.notifier).getAllChecklists(refresh: true);
        },
        color: AppColors.colorPrimary,
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            _buildAppBar(),

            checklistUiState.when(
              initial: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
              loading: () => _buildShimmerLoading(),
              successChecklistUpdate: (update) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  ref.read(checklistNotifierProvider.notifier).getAllChecklists(refresh: true);
                });
                return const SliverToBoxAdapter(child: SizedBox.shrink());
              },
              successChecklists: (checklists, hasMore) => _buildChecklistsList(checklists ?? [], hasMore),
              error: (message) => _buildError(message),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShimmerLoading() {
    return SliverPadding(
      padding: EdgeInsets.all(16.w),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => _buildShimmerCard(),
          childCount: 3,
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
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      leading: widget.isPushed
          ? IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.colorWhite,
                size: 20.w,
              ),
              onPressed: () => Navigator.pop(context),
            )
          : null,
      expandedHeight: 120.h,
      floating: false,
      pinned: true,
      elevation: 0,
      backgroundColor: AppColors.colorPrimary,
      surfaceTintColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 16.w, bottom: 16.h),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(6.w),
              decoration: BoxDecoration(
                color: AppColors.colorWhite.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Icon(
                Icons.checklist_rounded,
                color: AppColors.colorWhite,
                size: 16.w,
              ),
            ),
            SizedBox(width: 8.w),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Checklists',
                  style: TextStyle(
                    color: AppColors.colorWhite,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Manage your tasks and stay organized',
                  style: TextStyle(
                    color: AppColors.colorWhite.withOpacity(0.8),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
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
    );
  }

  Widget _buildChecklistsList(List<Checklist> checklists, bool hasMore) {
    if (checklists.isEmpty) {
      return _buildEmptyState();
    }

    return SliverPadding(
      padding: EdgeInsets.all(16.w),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (index < checklists.length) {
              return _buildChecklistCard(checklists[index]);
            } else if (hasMore) {
              return _buildLoadingIndicator();
            }
            return null;
          },
          childCount: checklists.length + (hasMore ? 1 : 0),
        ),
      ),
    );
  }

  Widget _buildChecklistCard(Checklist checklist) {
    final items = checklist.items ?? [];
    final completedCount = items.where((item) => item.isCompleted).length;
    final totalCount = items.length;
    final progress = totalCount > 0 ? completedCount / totalCount : 0.0;

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                      decoration: BoxDecoration(
                        color: _getStageBadgeColor(checklist.stage),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Text(
                        _getStageLabel(checklist.stage),
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.colorWhite,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
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
                            checklist.countryCode,
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.grayscaleTextBody,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Text(
                  checklist.title,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.grayscaleTextTitle,
                  ),
                ),
                SizedBox(height: 12.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '$completedCount of $totalCount completed',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grayscaleTextSubtitle,
                          ),
                        ),
                        Text(
                          '${(progress * 100).toInt()}%',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.colorPrimary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.r),
                      child: LinearProgressIndicator(
                        value: progress,
                        backgroundColor: AppColors.grayscaleSurfaceSubtitle,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          progress == 1.0 ? AppColors.successSurfaceDefault : AppColors.colorPrimary,
                        ),
                        minHeight: 8.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (items.isNotEmpty)
            ...items.map((item) => _buildChecklistItem(checklist.id, item)),
        ],
      ),
    );
  }

  Widget _buildChecklistItem(String checklistId, ChecklistItem item) {
    final isExpanded = _expandedItems[item.id] ?? false;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.grayscaleSurfaceSubtitle,
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                setState(() {
                  _expandedItems[item.id] = !isExpanded;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => _toggleChecklistItem(checklistId, item),
                      child: Container(
                        width: 24.w,
                        height: 24.w,
                        margin: EdgeInsets.only(top: 2.h),
                        decoration: BoxDecoration(
                          color: item.isCompleted ? AppColors.colorPrimary : AppColors.colorWhite,
                          border: Border.all(
                            color: item.isCompleted ? AppColors.colorPrimary : AppColors.grayscaleBorderDefault,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: item.isCompleted
                            ? Icon(
                                Icons.check,
                                size: 16.w,
                                color: AppColors.colorWhite,
                              )
                            : null,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                              color: item.isCompleted
                                  ? AppColors.grayscaleTextSubtitle
                                  : AppColors.grayscaleTextTitle,
                              decoration: item.isCompleted ? TextDecoration.lineThrough : null,
                            ),
                          ),
                          if (item.description != null && item.description!.isNotEmpty && !isExpanded)
                            Padding(
                              padding: EdgeInsets.only(top: 4.h),
                              child: Text(
                                _getPreviewText(item.description!),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: AppColors.grayscaleTextSubtitle,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    if (item.description != null && item.description!.isNotEmpty || (item.requiredDocs != null && item.requiredDocs!.isNotEmpty))
                      Icon(
                        isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                        color: AppColors.grayscaleTextSubtitle,
                        size: 20.w,
                      ),
                  ],
                ),
              ),
            ),
          ),
          if (isExpanded)
            Padding(
              padding: EdgeInsets.only(left: 52.w, right: 16.w, bottom: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (item.description != null && item.description!.isNotEmpty) ...[
                    Container(
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: AppColors.grayscaleSurfaceDeepBackground,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: MarkdownBody(
                        data: item.description!,
                        styleSheet: MarkdownStyleSheet(
                          p: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.grayscaleTextBody,
                            height: 1.5,
                          ),
                          strong: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.grayscaleTextTitle,
                          ),
                          em: TextStyle(
                            fontSize: 14.sp,
                            fontStyle: FontStyle.italic,
                            color: AppColors.grayscaleTextBody,
                          ),
                          listBullet: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.colorPrimary,
                          ),
                          a: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.colorPrimary,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.h),
                  ],
                  if (item.requiredDocs != null && item.requiredDocs!.isNotEmpty) ...[
                    Text(
                      'Required Documents:',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.grayscaleTextTitle,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Wrap(
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: item.requiredDocs!.map((doc) {
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                          decoration: BoxDecoration(
                            color: AppColors.primarySurfaceSubtitle,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: AppColors.primaryBorderLighter,
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.description_outlined,
                                size: 14.w,
                                color: AppColors.primarySurfaceDarker,
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                doc,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primarySurfaceDarker,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ],
              ),
            ),
        ],
      ),
    );
  }

  void _toggleChecklistItem(String checklistId, ChecklistItem item) {
    final request = ChecklistUpdateRequest(
      itemId: item.id,
      completed: !item.isCompleted,
    );

    ref.read(checklistNotifierProvider.notifier).updateChecklist(requestBody: request);
  }

  Widget _buildLoadingIndicator() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.colorPrimary,
          strokeWidth: 3,
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.all(16.w),
        padding: EdgeInsets.all(32.w),
        decoration: BoxDecoration(
          color: AppColors.colorWhite,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          children: [
            Icon(
              Icons.checklist_rounded,
              size: 64.w,
              color: AppColors.grayscaleTextSubtitle,
            ),
            SizedBox(height: 16.h),
            Text(
              'No checklists found',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.grayscaleTextTitle,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Your checklists will appear here',
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.grayscaleTextSubtitle,
              ),
            ),
          ],
        ),
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
          border: Border.all(color: AppColors.dangerBorderDefault, width: 1),
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
                ref.read(checklistNotifierProvider.notifier).getAllChecklists(refresh: true);
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.colorPrimary,
                foregroundColor: AppColors.colorWhite,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
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

  Color _getStageBadgeColor(String stage) {
    switch (stage.toLowerCase()) {
      case 'pre-arrival':
        return AppColors.primarySurfaceDefault;
      case 'arrival':
        return AppColors.secondarySurfaceDarker;
      case 'first-week':
        return const Color(0xFF7C3AED);
      case 'everyday':
      case 'settling-in':
        return AppColors.successSurfaceDefault;
      default:
        return AppColors.grayscaleIconDefault;
    }
  }

  String _getStageLabel(String stage) {
    switch (stage.toLowerCase()) {
      case 'pre-arrival':
        return 'PRE-ARRIVAL';
      case 'arrival':
        return 'ARRIVAL';
      case 'first-week':
        return 'FIRST WEEK';
      case 'everyday':
        return 'EVERYDAY';
      case 'settling-in':
        return 'SETTLING IN';
      default:
        return stage.toUpperCase();
    }
  }

  String _getPreviewText(String markdown) {
    String preview = markdown
        .replaceAll(RegExp(r'#+ '), '')
        .replaceAll(RegExp(r'\*\*'), '')
        .replaceAll(RegExp(r'\n+'), ' ')
        .trim();
    return preview;
  }
}
