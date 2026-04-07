import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/register_request.dart';
import 'package:welcomemate/presentation/screen/auth/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/auth/state/auth_ui_state.dart';
import 'package:welcomemate/presentation/screen/auth/widget/auth_header.dart';
import 'package:welcomemate/presentation/screen/auth/widget/auth_toggle_link.dart';
import 'package:welcomemate/presentation/common/widget/custom_button.dart';
import 'package:welcomemate/presentation/common/widget/custom_form_field.dart';
import 'package:welcomemate/presentation/theme/color.dart';
import 'package:welcomemate/presentation/util/toaster.dart';

import '../../util/routes.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  bool _agreedToTerms = false;

  Future<void> _handleSignUp() async {
    final isValid = _formKey.currentState?.saveAndValidate() ?? false;
    if (!isValid) return;

    if (!_agreedToTerms) {
      Toaster.showError(
        context,
        'You must agree to the Privacy Policy and Terms of Use',
      );
      return;
    }

    final username = _formKey.currentState?.fields['username']?.value;
    final email = _formKey.currentState?.fields['email']?.value;
    final password = _formKey.currentState?.fields['password']?.value;
    final confirmPassword =
        _formKey.currentState?.fields['confirmPassword']?.value;

    if (username.isEmpty || password.isEmpty) {
      Toaster.showError(context, 'Please fill all the fields');
      return;
    }

    if (password != confirmPassword) {
      Toaster.showError(context, 'Passwords do not match');
      return;
    }

    await ref
        .read(authNotifierProvider.notifier)
        .register(
          requestBody: RegisterRequest(
            fullName: username,
            email: email,
            password: password,
            countryCode: 'UK',
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    ref.listen<AuthUiState>(authNotifierProvider, (previous, current) {
      current.maybeWhen(
        success: (register) {
          Toaster.showSuccess(
            context,
            "Registration successful! Welcome to SpellX.",
          );
          Navigator.pushNamedAndRemoveUntil(
            context,
            Routes.main,
            (route) => false,
          );
        },
        error: (message) {
          Toaster.showError(context, message);
        },
        orElse: () {},
      );
    });

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FE),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Positioned(
                  top: 0.h,
                  right: 16.w,
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: AppColors.grayscaleBorderDisabled,
                      size: 24.sp,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 32.h,
                  ),
                  child: FormBuilder(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const AuthHeader(title: "Let's Create Your Account"),

                        SizedBox(height: 32.h),

                        CustomFormField(
                          name: 'username',
                          labelText: 'Full Name',
                          hintText: 'John Doe',
                          iconPath: 'assets/icons/ic-profile.svg',
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          validators: [
                            FormBuilderValidators.required(
                              errorText: 'Full name is required',
                            ),
                          ],
                        ),

                        SizedBox(height: 16.h),

                        CustomFormField(
                          name: 'email',
                          labelText: 'Email',
                          hintText: 'username@gmail.com',
                          iconPath: 'assets/icons/ic-email.svg',
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          validators: [
                            FormBuilderValidators.required(
                              errorText: 'Email is required',
                            ),
                            FormBuilderValidators.email(
                              errorText: 'Enter a valid email address',
                            ),
                          ],
                        ),

                        SizedBox(height: 16.h),

                        CustomFormField(
                          name: 'password',
                          labelText: 'Password',
                          hintText: '*********',
                          iconPath: 'assets/icons/ic-password.svg',
                          isPassword: true,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.next,
                          validators: [
                            FormBuilderValidators.required(
                              errorText: 'Password is required',
                            ),
                            FormBuilderValidators.minLength(
                              6,
                              errorText:
                                  'Password must be at least 6 characters',
                            ),
                          ],
                        ),

                        SizedBox(height: 16.h),

                        CustomFormField(
                          name: 'confirmPassword',
                          labelText: 'Confirm Password',
                          hintText: '*********',
                          iconPath: 'assets/icons/ic-password.svg',
                          isPassword: true,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          validators: [
                            FormBuilderValidators.required(
                              errorText: 'Please confirm your password',
                            ),
                            (value) {
                              if (value !=
                                  _formKey
                                      .currentState
                                      ?.fields['password']
                                      ?.value) {
                                return 'Passwords do not match';
                              }
                              return null;
                            },
                          ],
                          onSubmitted: _handleSignUp,
                        ),

                        SizedBox(height: 12.h),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 24.w,
                              height: 24.h,
                              child: Checkbox(
                                value: _agreedToTerms,
                                onChanged: (value) => setState(
                                  () => _agreedToTerms = value ?? false,
                                ),
                                activeColor: AppColors.colorPrimary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.h),
                                ),
                                side: const BorderSide(
                                  color: AppColors.grayscaleBorderDisabled,
                                ),
                              ),
                            ),
                            SizedBox(width: 12.w),
                            Flexible(
                              child: GestureDetector(
                                onTap: () {
                                  setState(
                                    () => _agreedToTerms = !_agreedToTerms,
                                  );
                                },
                                child: RichText(
                                  text: TextSpan(
                                    text: "By continuing you accept our",
                                    style: textTheme.bodyMedium?.copyWith(
                                      color: AppColors.grayscaleTextBody,
                                      height: 16.sp / 12.sp,
                                      letterSpacing: 0.sp,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: " Privacy Policy",
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {},
                                      ),
                                      const TextSpan(text: " and "),
                                      const TextSpan(text: "Terms of Use"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        //
                        SizedBox(height: 24.h),
                        CustomButton(
                          label: "Sign up",
                          isLoading: ref.watch(
                            authNotifierProvider.select(
                              (state) => state is LoadingState,
                            ),
                          ),
                          onPressed: _handleSignUp,
                        ),

                        SizedBox(height: 24.h),

                        AuthToggleLink(
                          prompt: "Already have an account? ",
                          linkText: "Sign in",
                          onTap: () => Navigator.of(context).pop(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
