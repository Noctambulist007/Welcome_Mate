import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/user_request.dart';
import 'package:welcomemate/domain/model/auth/user.dart';
import 'package:welcomemate/presentation/screen/auth/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/career/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/chat/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/checklist/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/emergency/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/guide/notifier/provider.dart';
import 'package:welcomemate/presentation/theme/color.dart';
import 'package:welcomemate/presentation/util/routes.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  bool _isEditing = false;
  final _formKey = GlobalKey<FormState>();
  File? _pickedImage;

  TextEditingController? _nameController;
  TextEditingController? _bioController;
  TextEditingController? _phoneController;
  TextEditingController? _universityController;
  TextEditingController? _arrivalDateController;

  String? _selectedLanguage;
  String? _selectedCountryCode;

  @override
  void dispose() {
    _nameController?.dispose();
    _bioController?.dispose();
    _phoneController?.dispose();
    _universityController?.dispose();
    _arrivalDateController?.dispose();
    super.dispose();
  }

  void _initControllers(User user) {
    _nameController = TextEditingController(text: user.fullName);
    _bioController = TextEditingController(text: user.bio);
    _phoneController = TextEditingController(text: user.phoneNumber);
    _universityController = TextEditingController(text: user.university ?? '');
    _arrivalDateController = TextEditingController(
      text: user.arrivalDate ?? '',
    );

    final countryOptions = ['BD', 'US', 'UK', 'CA', 'AU', 'IN', 'PK'];
    _selectedCountryCode = countryOptions.contains(user.countryCode)
        ? user.countryCode
        : countryOptions.first;

    final langOptions = ['en', 'bn', 'es', 'fr', 'de', 'ar', 'ur'];
    _selectedLanguage = langOptions.contains(user.preferredLang)
        ? user.preferredLang
        : langOptions.first;
  }

  Future<void> _saveProfile(User user) async {
    if (_formKey.currentState?.validate() ?? false) {
      final request = UserRequest(
        fullName: _nameController?.text ?? user.fullName,
        bio: _bioController?.text ?? user.bio,
        phoneNumber: _phoneController?.text ?? user.phoneNumber,
        university: _universityController?.text.isEmpty ?? true
            ? null
            : _universityController?.text,
        arrivalDate: _arrivalDateController?.text.isEmpty ?? true
            ? null
            : _arrivalDateController?.text,
        preferredLang: _selectedLanguage ?? user.preferredLang,
        countryCode: _selectedCountryCode ?? user.countryCode,
      );

      await ref
          .read(authNotifierProvider.notifier)
          .updateUserInfo(requestBody: request, avatarFile: _pickedImage);
      setState(() {
        _isEditing = false;
        _pickedImage = null;
      });
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(
        source: source,
        imageQuality: 70,
      );

      if (pickedFile != null) {
        setState(() {
          _pickedImage = File(pickedFile.path);
        });
      }
    } on PlatformException catch (e) {
      debugPrint('Failed to pick image: $e');
    }
  }

  void _showImageSourceActionSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.photo_camera, color: AppColors.colorPrimary),
              title: Text('Take Photo'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.camera);
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_library, color: AppColors.colorPrimary),
              title: Text('Choose from Gallery'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.gallery);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.colorPrimary,
              onPrimary: Colors.white,
              surface: Colors.white,
            ),
          ),
          child: child!,
        );
      },
    );
    if (date != null && _arrivalDateController != null) {
      _arrivalDateController!.text = date.toString().split(' ')[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    final userUiState = ref.watch(authNotifierProvider);

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: userUiState.maybeWhen(
        orElse: () => const SizedBox.shrink(),
        loading: () => Center(
          child: CircularProgressIndicator(color: AppColors.colorPrimary),
        ),
        error: (message) => Center(
          child: Padding(
            padding: EdgeInsets.all(24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outline_rounded,
                  size: 64.sp,
                  color: AppColors.dangerSurfaceDefault,
                ),
                SizedBox(height: 16.h),
                Text(
                  'Something went wrong',
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
                SizedBox(height: 24.h),
                ElevatedButton(
                  onPressed: () =>
                      ref.read(authNotifierProvider.notifier).getUserInfo(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.colorPrimary,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 32.w,
                      vertical: 12.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text('Retry', style: TextStyle(fontSize: 16.sp)),
                ),
              ],
            ),
          ),
        ),
        successUserInfo: (user) {
          if (user == null) {
            return Center(
              child: Text(
                'No user data available',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.grayscaleTextSubtitle,
                ),
              ),
            );
          }

          if (!_isEditing) {
            _initControllers(user);
          }

          return SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 180.h,
                  pinned: true,
                  elevation: 0,
                  leading: BackButton(
                    color: Colors.white,
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  backgroundColor: AppColors.colorPrimary,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      user.fullName,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
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
                                  radius: 36.r,
                                  backgroundColor: Colors.white,
                                  backgroundImage: _pickedImage != null
                                      ? FileImage(_pickedImage!)
                                      : (user.avatar != null
                                          ? NetworkImage(user.avatar!)
                                              as ImageProvider
                                          : null),
                                  child: (_pickedImage == null &&
                                          user.avatar == null)
                                      ? Text(
                                          user.fullName.isNotEmpty
                                              ? user.fullName[0].toUpperCase()
                                              : 'U',
                                          style: TextStyle(
                                            fontSize: 26.sp,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.colorPrimary,
                                          ),
                                        )
                                      : null,
                                ),
                              ),
                              if (_isEditing)
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: () =>
                                        _showImageSourceActionSheet(context),
                                    child: Container(
                                      padding: EdgeInsets.all(6.w),
                                      decoration: BoxDecoration(
                                        color: AppColors.colorPrimary,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.camera_alt,
                                        size: 14.w,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  actions: [
                    if (!_isEditing)
                      IconButton(
                        icon: SvgPicture.asset(
                          'assets/icons/ic-edit.svg',
                          width: 22.w,
                          height: 22.h,
                        ),
                        onPressed: () => setState(() => _isEditing = true),
                      )
                    else
                      TextButton(
                        onPressed: () => setState(() {
                          _isEditing = false;
                          _pickedImage = null;
                        }),
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                  ],
                ),
                SliverToBoxAdapter(
                  child: _isEditing
                      ? _buildEditForm(user)
                      : _buildViewMode(user),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: userUiState.maybeWhen(
        orElse: () => null,
        successUserInfo: (user) => _buildBottomBar(user),
      ),
    );
  }

  Widget? _buildBottomBar(User? user) {
    if (user == null) return null;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
      child: SafeArea(
        child: _isEditing
            ? ElevatedButton(
          onPressed: () => _saveProfile(user),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.colorPrimary,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 16.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            elevation: 0,
          ),
          child: Text(
            'Save Changes',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
            : ElevatedButton.icon(
          onPressed: () async {
            await ref.read(authNotifierProvider.notifier).logout();
            
            ref.invalidate(checklistNotifierProvider);
            ref.invalidate(careerNotifierProvider);
            ref.invalidate(guideNotifierProvider);
            ref.invalidate(emergencyNotifierProvider);
            ref.invalidate(chatNotifierProvider);
            ref.invalidate(authNotifierProvider);

            if (mounted) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                Routes.login,
                (route) => false,
              );
            }
          },
          icon: Icon(Icons.logout_rounded, size: 20.sp),
          label: Text(
            'Logout',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.dangerSurfaceDefault,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 16.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            elevation: 0,
          ),
        ),
      ),
    );
  }

  Widget _buildViewMode(User user) {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (user.bio.isNotEmpty) ...[
            _buildSectionTitle('About'),
            SizedBox(height: 12.h),
            _buildInfoCard(icon: Icons.info_outline, content: user.bio),
            SizedBox(height: 24.h),
          ],

          _buildSectionTitle('Contact Information'),
          SizedBox(height: 12.h),
          _buildInfoCard(
            icon: Icons.email_outlined,
            label: 'Email',
            content: user.email,
          ),
          SizedBox(height: 12.h),
          _buildInfoCard(
            icon: Icons.phone_outlined,
            label: 'Phone',
            content: user.phoneNumber.isNotEmpty
                ? user.phoneNumber
                : 'Not provided',
          ),
          SizedBox(height: 24.h),

          _buildSectionTitle('Personal Details'),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: _buildInfoCard(
                  icon: Icons.flag_outlined,
                  label: 'Country',
                  content: user.countryCode,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: _buildInfoCard(
                  icon: Icons.language_outlined,
                  label: 'Language',
                  content: user.preferredLang.toUpperCase(),
                ),
              ),
            ],
          ),

          if (user.university != null || user.arrivalDate != null) ...[
            SizedBox(height: 24.h),
            _buildSectionTitle('Additional Information'),
            SizedBox(height: 12.h),
          ],

          if (user.university != null) ...[
            _buildInfoCard(
              icon: Icons.school_outlined,
              label: 'University',
              content: user.university!,
            ),
            SizedBox(height: 12.h),
          ],

          if (user.arrivalDate != null) ...[
            _buildInfoCard(
              icon: Icons.calendar_today_outlined,
              label: 'Arrival Date',
              content: user.arrivalDate!,
            ),
          ],

          SizedBox(height: 100.h),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.grayscaleTextTitle,
        letterSpacing: 0.5,
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    String? label,
    required String content,
  }) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.grayscaleBorderDefault, width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: AppColors.primarySurfaceSubtitle,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(icon, color: AppColors.colorPrimary, size: 20.sp),
          ),
          SizedBox(width: 14.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (label != null) ...[
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.grayscaleTextSubtitle,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4.h),
                ],
                Text(
                  content,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grayscaleTextBody,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEditForm(User user) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Edit Profile'),
            SizedBox(height: 20.h),

            _buildTextField(
              controller: _nameController!,
              label: 'Full Name',
              icon: Icons.person_outline,
              validator: (val) =>
              val?.isEmpty ?? true ? 'Name is required' : null,
            ),
            SizedBox(height: 16.h),

            _buildTextField(
              controller: _bioController!,
              label: 'Bio',
              icon: Icons.info_outline,
              maxLines: 3,
            ),
            SizedBox(height: 16.h),

            _buildTextField(
              controller: _phoneController!,
              label: 'Phone Number',
              icon: Icons.phone_outlined,
            ),
            SizedBox(height: 16.h),

            _buildDropdown(
              value: _selectedCountryCode,
              label: 'Country',
              icon: Icons.flag_outlined,
              items: ['BD', 'US', 'UK', 'CA', 'AU', 'IN', 'PK'],
              onChanged: (val) => setState(() => _selectedCountryCode = val),
            ),
            SizedBox(height: 16.h),

            _buildDropdown(
              value: _selectedLanguage,
              label: 'Preferred Language',
              icon: Icons.language_outlined,
              items: ['en', 'bn', 'es', 'fr', 'de', 'ar', 'ur'],
              onChanged: (val) => setState(() => _selectedLanguage = val),
            ),
            SizedBox(height: 16.h),

            _buildTextField(
              controller: _universityController!,
              label: 'University (Optional)',
              icon: Icons.school_outlined,
            ),
            SizedBox(height: 16.h),

            _buildTextField(
              controller: _arrivalDateController!,
              label: 'Arrival Date (Optional)',
              icon: Icons.calendar_today_outlined,
              readOnly: true,
              onTap: () => _selectDate(context),
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    String? Function(String?)? validator,
    int maxLines = 1,
    bool readOnly = false,
    VoidCallback? onTap,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      readOnly: readOnly,
      onTap: onTap,
      validator: validator,
      style: TextStyle(fontSize: 15.sp),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: AppColors.grayscaleTextSubtitle,
          fontSize: 14.sp,
        ),
        prefixIcon: Icon(icon, color: AppColors.colorPrimary, size: 20.sp),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.grayscaleBorderDefault),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.grayscaleBorderDefault),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.colorPrimary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.dangerSurfaceDefault),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      ),
    );
  }

  Widget _buildDropdown({
    required String? value,
    required String label,
    required IconData icon,
    required List<String> items,
    required void Function(String?) onChanged,
  }) {
    return DropdownButtonFormField<String>(
      value: value,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: AppColors.grayscaleTextSubtitle,
          fontSize: 14.sp,
        ),
        prefixIcon: Icon(icon, color: AppColors.colorPrimary, size: 20.sp),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.grayscaleBorderDefault),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.grayscaleBorderDefault),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: AppColors.colorPrimary, width: 2),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      ),
      items: items
          .map(
            (item) => DropdownMenuItem(
          value: item,
          child: Text(item, style: TextStyle(fontSize: 15.sp)),
        ),
      )
          .toList(),
      onChanged: onChanged,
    );
  }
}
