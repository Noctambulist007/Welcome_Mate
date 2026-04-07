import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:welcomemate/data/datasource/remote/model/request/community/post_request.dart';
import 'package:welcomemate/domain/model/community/post.dart';
import 'package:welcomemate/presentation/screen/community/notifier/provider.dart';
import 'package:welcomemate/presentation/theme/color.dart';
import 'package:intl/intl.dart';

class CommunityScreen extends ConsumerStatefulWidget {
  final bool isPushed;
  const CommunityScreen({super.key, this.isPushed = false});

  @override
  ConsumerState<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends ConsumerState<CommunityScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.9) {
      final state = ref.read(communityNotifierProvider);
      state.maybeWhen(
        successPostList: (posts, hasMore) {
          if (hasMore && !_isLoadingMore) {
            setState(() => _isLoadingMore = true);
            ref.read(communityNotifierProvider.notifier).loadMore().then((_) {
              setState(() => _isLoadingMore = false);
            });
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
    final communityUiState = ref.watch(communityNotifierProvider);

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          _buildAppBar(),
          communityUiState.when(
            initial: () => SliverToBoxAdapter(child: _buildEmptyState()),
            loading: () => SliverFillRemaining(child: _buildLoadingState()),
            successPost: (post) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ref.read(communityNotifierProvider.notifier).getAllPost(refresh: true);
              });
              return SliverFillRemaining(child: _buildLoadingState());
            },
            successPostList: (posts, hasMore) => _buildPostList(posts ?? [], hasMore),
            successComment: (comment) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ref.read(communityNotifierProvider.notifier).getAllPost(refresh: true);
              });
              return SliverFillRemaining(child: _buildLoadingState());
            },
            successUpvotePost: (upvote) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ref.read(communityNotifierProvider.notifier).getAllPost(refresh: true);
              });
              return SliverFillRemaining(child: _buildLoadingState());
            },
            error: (message) => SliverFillRemaining(child: _buildErrorState(message)),
          ),
        ],
      ),
      floatingActionButton: _buildCreatePostFAB(),
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
                Icons.people,
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
                  'Community',
                  style: TextStyle(
                    color: AppColors.colorWhite,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Share and connect',
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

  Widget _buildPostList(List<Post> posts, bool hasMore) {
    if (posts.isEmpty) {
      return SliverToBoxAdapter(child: _buildEmptyState());
    }

    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (index == posts.length) {
              return _buildLoadingMoreIndicator();
            }
            return _buildPostCard(posts[index]);
          },
          childCount: posts.length + (hasMore ? 1 : 0),
        ),
      ),
    );
  }

  Widget _buildPostCard(Post post) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: AppColors.colorWhite,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: AppColors.grayscaleBorderDefault,
          width: 1,
        )
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16.r),
          onTap: () => _showPostDetails(post),
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
                        Icons.person,
                        color: AppColors.colorPrimary,
                        size: 16.w,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.authorName,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.grayscaleTextTitle,
                            ),
                          ),
                          Text(
                            _formatTimestamp(post.createdAt),
                            style: TextStyle(
                              fontSize: 11.sp,
                              color: AppColors.grayscaleTextSubtitle,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                            post.countryCode,
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
                  post.title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.grayscaleTextTitle,
                  ),
                ),

                SizedBox(height: 8.h),

                Text(
                  post.body,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.grayscaleTextBody,
                    height: 1.4,
                  ),
                ),

                SizedBox(height: 12.h),

                if (post.tags != null && post.tags!.isNotEmpty)
                  Wrap(
                    spacing: 6.w,
                    runSpacing: 6.h,
                    children: post.tags!.take(3).map((tag) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
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

                SizedBox(height: 12.h),

                Row(
                  children: [
                    InkWell(
                      onTap: () => _handleUpvote(post),
                      borderRadius: BorderRadius.circular(8.r),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                        decoration: BoxDecoration(
                          color: post.isUpvoted
                              ? AppColors.primarySurfaceSubtitle
                              : AppColors.grayscaleSurfaceBackground,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                            color: post.isUpvoted
                                ? AppColors.colorPrimary
                                : AppColors.grayscaleBorderDefault,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              post.isUpvoted ? Icons.favorite : Icons.favorite_border,
                              size: 16.w,
                              color: post.isUpvoted
                                  ? AppColors.colorPrimary
                                  : AppColors.grayscaleTextSubtitle,
                            ),
                            SizedBox(width: 6.w),
                            Text(
                              '${post.upvotesCount}',
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: post.isUpvoted
                                    ? AppColors.colorPrimary
                                    : AppColors.grayscaleTextBody,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 12.w),

                    InkWell(
                      onTap: () => _showCommentSheet(post),
                      borderRadius: BorderRadius.circular(8.r),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                        decoration: BoxDecoration(
                          color: AppColors.grayscaleSurfaceBackground,
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                            color: AppColors.grayscaleBorderDefault,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.chat_bubble_outline,
                              size: 16.w,
                              color: AppColors.grayscaleTextSubtitle,
                            ),
                            SizedBox(width: 6.w),
                            Text(
                              '${post.commentsCount}',
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.grayscaleTextBody,
                              ),
                            ),
                          ],
                        ),
                      ),
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

  Widget _buildLoadingMoreIndicator() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 20.w,
              height: 20.h,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.colorPrimary),
              ),
            ),
            SizedBox(width: 12.w),
            Text(
              'Loading more posts...',
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.grayscaleTextSubtitle,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCreatePostFAB() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.colorPrimary,
            AppColors.primarySurfaceDarker,
          ],
        ),
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.colorPrimary.withOpacity(0.4),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: FloatingActionButton.extended(
        onPressed: _showCreatePostDialog,
        backgroundColor: Colors.transparent,
        elevation: 0,
        label: Text(
          'Add Post',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.colorWhite,
          ),
        ),
        icon: Icon(
          Icons.add,
          color: AppColors.colorWhite,
          size: 20.w,
        ),
      ),
    );
  }

  void _showCreatePostDialog() {
    final titleController = TextEditingController();
    final bodyController = TextEditingController();
    final tagsController = TextEditingController();
    bool isSubmitting = false;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) => Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          decoration: BoxDecoration(
            color: AppColors.colorWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.r),
              topRight: Radius.circular(24.r),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(24.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 40.w,
                      height: 4.h,
                      decoration: BoxDecoration(
                        color: AppColors.grayscaleSurfaceSubtitle,
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),

                  Text(
                    'Create New Post',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.grayscaleTextTitle,
                    ),
                  ),
                  SizedBox(height: 20.h),

                  Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grayscaleTextTitle,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  TextField(
                    controller: titleController,
                    enabled: !isSubmitting,
                    decoration: InputDecoration(
                      hintText: 'Enter post title...',
                      hintStyle: TextStyle(
                        color: AppColors.grayscaleTextSubtitle,
                        fontSize: 14.sp,
                      ),
                      filled: true,
                      fillColor: AppColors.grayscaleSurfaceBackground,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.grayscaleBorderDefault,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.grayscaleBorderDefault,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.colorPrimary,
                          width: 2,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 12.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),

                  Text(
                    'Body',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grayscaleTextTitle,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  TextField(
                    controller: bodyController,
                    enabled: !isSubmitting,
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Share your thoughts...',
                      hintStyle: TextStyle(
                        color: AppColors.grayscaleTextSubtitle,
                        fontSize: 14.sp,
                      ),
                      filled: true,
                      fillColor: AppColors.grayscaleSurfaceBackground,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.grayscaleBorderDefault,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.grayscaleBorderDefault,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.colorPrimary,
                          width: 2,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 12.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),

                  Text(
                    'Tags (comma-separated)',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grayscaleTextTitle,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  TextField(
                    controller: tagsController,
                    enabled: !isSubmitting,
                    decoration: InputDecoration(
                      hintText: 'e.g., housing, visa, healthcare',
                      hintStyle: TextStyle(
                        color: AppColors.grayscaleTextSubtitle,
                        fontSize: 14.sp,
                      ),
                      filled: true,
                      fillColor: AppColors.grayscaleSurfaceBackground,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.grayscaleBorderDefault,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.grayscaleBorderDefault,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.colorPrimary,
                          width: 2,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 12.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: isSubmitting
                          ? null
                          : () async {
                              final title = titleController.text.trim();
                              final body = bodyController.text.trim();
                              final tagsText = tagsController.text.trim();

                              if (title.isEmpty || body.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Please fill in title and body'),
                                    backgroundColor: AppColors.dangerSurfaceDefault,
                                  ),
                                );
                                return;
                              }

                              setModalState(() => isSubmitting = true);

                              final tags = tagsText.isEmpty
                                  ? <String>[]
                                  : tagsText.split(',').map((e) => e.trim()).toList();

                              final request = PostRequest(
                                title: title,
                                body: body,
                                countryCode: 'UK',
                                tags: tags.isEmpty ? null : tags,
                              );

                              await ref
                                  .read(communityNotifierProvider.notifier)
                                  .createPost(requestBody: request);

                              if (context.mounted) {
                                Navigator.pop(context);
                              }
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.colorPrimary,
                        foregroundColor: AppColors.colorWhite,
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        elevation: 0,
                      ),
                      child: isSubmitting
                          ? SizedBox(
                              width: 20.w,
                              height: 20.h,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.colorWhite,
                                ),
                              ),
                            )
                          : Text(
                              'Post',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showCommentSheet(Post post) {
    final commentController = TextEditingController();
    bool isSubmitting = false;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) => Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          decoration: BoxDecoration(
            color: AppColors.colorWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.r),
              topRight: Radius.circular(24.r),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(24.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 40.w,
                      height: 4.h,
                      decoration: BoxDecoration(
                        color: AppColors.grayscaleSurfaceSubtitle,
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),

                  Text(
                    'Add Comment',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.grayscaleTextTitle,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    post.title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.grayscaleTextSubtitle,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 20.h),

                  TextField(
                    controller: commentController,
                    enabled: !isSubmitting,
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: 'Write your comment...',
                      hintStyle: TextStyle(
                        color: AppColors.grayscaleTextSubtitle,
                        fontSize: 14.sp,
                      ),
                      filled: true,
                      fillColor: AppColors.grayscaleSurfaceBackground,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.grayscaleBorderDefault,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.grayscaleBorderDefault,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: BorderSide(
                          color: AppColors.colorPrimary,
                          width: 2,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 12.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: isSubmitting
                          ? null
                          : () async {
                              final comment = commentController.text.trim();

                              if (comment.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Please write a comment'),
                                    backgroundColor: AppColors.dangerSurfaceDefault,
                                  ),
                                );
                                return;
                              }

                              setModalState(() => isSubmitting = true);

                              await ref
                                  .read(communityNotifierProvider.notifier)
                                  .addComment(postId: post.id, comment: comment);

                              if (context.mounted) {
                                Navigator.pop(context);
                              }
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.colorPrimary,
                        foregroundColor: AppColors.colorWhite,
                        padding: EdgeInsets.symmetric(vertical: 14.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        elevation: 0,
                      ),
                      child: isSubmitting
                          ? SizedBox(
                              width: 20.w,
                              height: 20.h,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.colorWhite,
                                ),
                              ),
                            )
                          : Text(
                              'Submit Comment',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showPostDetails(Post post) {
    final commentController = TextEditingController();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.9,
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

                Expanded(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    padding: EdgeInsets.all(24.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.w),
                              decoration: BoxDecoration(
                                color: AppColors.primarySurfaceSubtitle,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Icon(
                                Icons.person,
                                color: AppColors.colorPrimary,
                                size: 20.w,
                              ),
                            ),
                            SizedBox(width: 12.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    post.authorName,
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.grayscaleTextTitle,
                                    ),
                                  ),
                                  Text(
                                    _formatTimestamp(post.createdAt),
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.grayscaleTextSubtitle,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                              decoration: BoxDecoration(
                                color: AppColors.secondarySurfaceSubtitle,
                                borderRadius: BorderRadius.circular(8.r),
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
                                    size: 14.w,
                                    color: AppColors.grayscaleTextBody,
                                  ),
                                  SizedBox(width: 4.w),
                                  Text(
                                    post.countryCode,
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.grayscaleTextBody,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 20.h),

                        Text(
                          post.title,
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.grayscaleTextTitle,
                          ),
                        ),

                        SizedBox(height: 16.h),

                        Text(
                          post.body,
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: AppColors.grayscaleTextBody,
                            height: 1.6,
                          ),
                        ),

                        SizedBox(height: 20.h),

                        if (post.tags != null && post.tags!.isNotEmpty) ...[
                          Text(
                            'Tags',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.grayscaleTextTitle,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Wrap(
                            spacing: 8.w,
                            runSpacing: 8.h,
                            children: post.tags!.map((tag) {
                              return Container(
                                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                                decoration: BoxDecoration(
                                  color: AppColors.primarySurfaceSubtitle,
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Text(
                                  tag,
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primarySurfaceDarker,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                          SizedBox(height: 20.h),
                        ],

                        Container(
                          padding: EdgeInsets.all(16.w),
                          decoration: BoxDecoration(
                            color: AppColors.grayscaleSurfaceBackground,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: AppColors.colorPrimary,
                                    size: 24.w,
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    '${post.upvotesCount}',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.grayscaleTextTitle,
                                    ),
                                  ),
                                  Text(
                                    'Upvotes',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.grayscaleTextSubtitle,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.chat_bubble,
                                    color: AppColors.colorPrimary,
                                    size: 24.w,
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    '${post.commentsCount}',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.grayscaleTextTitle,
                                    ),
                                  ),
                                  Text(
                                    'Comments',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.grayscaleTextSubtitle,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        
                        SizedBox(height: 24.h),

                        Text(
                          'Comments',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.grayscaleTextTitle,
                          ),
                        ),
                        SizedBox(height: 16.h),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: TextField(
                                controller: commentController,
                                minLines: 1,
                                maxLines: 3,
                                decoration: InputDecoration(
                                  hintText: 'Add a comment...',
                                  hintStyle: TextStyle(
                                    color: AppColors.grayscaleTextSubtitle,
                                    fontSize: 14.sp,
                                  ),
                                  filled: true,
                                  fillColor: AppColors.grayscaleSurfaceBackground,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.w,
                                    vertical: 12.h,
                                  ),
                                ),
                                onSubmitted: (value) {
                                  if (value.trim().isNotEmpty) {
                                    ref.read(communityNotifierProvider.notifier).addComment(
                                      postId: post.id,
                                      comment: value.trim(),
                                    );
                                    if (context.mounted) {
                                      Navigator.pop(context);
                                    }
                                  }
                                },
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.colorPrimary,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  final text = commentController.text.trim();
                                  if (text.isNotEmpty) {
                                    ref.read(communityNotifierProvider.notifier).addComment(
                                      postId: post.id,
                                      comment: text,
                                    );
                                    if (context.mounted) {
                                      Navigator.pop(context);
                                    }
                                  }
                                },
                                icon: Icon(
                                  Icons.send_rounded,
                                  color: AppColors.colorWhite,
                                  size: 20.w,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 24.h),

                        if (post.comments.isEmpty)
                          Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.h),
                              child: Text(
                                'No comments yet',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.grayscaleTextSubtitle,
                                ),
                              ),
                            ),
                          )
                        else
                          ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: post.comments.length,
                            separatorBuilder: (context, index) => SizedBox(height: 16.h),
                            itemBuilder: (context, index) {
                              final comment = post.comments[index];
                              return Container(
                                padding: EdgeInsets.all(12.w),
                                decoration: BoxDecoration(
                                  color: AppColors.grayscaleSurfaceBackground,
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(6.w),
                                          decoration: BoxDecoration(
                                            color: AppColors.primarySurfaceSubtitle,
                                            borderRadius: BorderRadius.circular(8.r),
                                          ),
                                          child: Icon(
                                            Icons.person,
                                            color: AppColors.colorPrimary,
                                            size: 16.w,
                                          ),
                                        ),
                                        SizedBox(width: 8.w),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                comment.authorName,
                                                style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.grayscaleTextTitle,
                                                ),
                                              ),
                                              Text(
                                                _formatTimestamp(comment.createdAt),
                                                style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color: AppColors.grayscaleTextSubtitle,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      comment.body,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: AppColors.grayscaleTextBody,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        
                        SizedBox(height: 20.h),
                      ],
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

  void _handleUpvote(Post post) {
    ref.read(communityNotifierProvider.notifier).upvotePost(postId: post.id);
  }

  Widget _buildEmptyState() {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 32.w),
        padding: EdgeInsets.all(32.w),
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: AppColors.primarySurfaceSubtitle,
                borderRadius: BorderRadius.circular(50.r),
              ),
              child: Icon(
                Icons.forum_outlined,
                size: 48.w,
                color: AppColors.colorPrimary,
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'No Posts Yet',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.grayscaleTextTitle,
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              'Be the first to share your thoughts and experiences with the community!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.grayscaleTextSubtitle,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingState() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      itemCount: 5,
      itemBuilder: (context, index) => _buildShimmerCard(),
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
          Row(
            children: [
              Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: AppColors.grayscaleSurfaceSubtitle,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120.w,
                      height: 14.h,
                      decoration: BoxDecoration(
                        color: AppColors.grayscaleSurfaceSubtitle,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Container(
                      width: 80.w,
                      height: 12.h,
                      decoration: BoxDecoration(
                        color: AppColors.grayscaleSurfaceSubtitle,
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Container(
            width: 200.w,
            height: 18.h,
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
          SizedBox(height: 4.h),
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

  Widget _buildErrorState(String message) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 32.w),
        padding: EdgeInsets.all(24.w),
        decoration: BoxDecoration(
          color: AppColors.colorWhite,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: AppColors.dangerBorderDefault, width: 1),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                ref.read(communityNotifierProvider.notifier).getAllPost(refresh: true);
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

  String _formatTimestamp(String timestamp) {
    try {
      final dateTime = DateTime.parse(timestamp);
      final now = DateTime.now();
      final difference = now.difference(dateTime);

      if (difference.inDays == 0) {
        if (difference.inHours == 0) {
          if (difference.inMinutes == 0) {
            return 'Just now';
          }
          return '${difference.inMinutes}m ago';
        }
        return '${difference.inHours}h ago';
      } else if (difference.inDays == 1) {
        return 'Yesterday';
      } else if (difference.inDays < 7) {
        return '${difference.inDays}d ago';
      } else {
        return DateFormat('MMM dd, yyyy').format(dateTime);
      }
    } catch (e) {
      return timestamp;
    }
  }
}
