import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/login_request.dart';
import 'package:welcomemate/data/datasource/remote/model/request/auth/register_request.dart';
import 'package:welcomemate/presentation/screen/auth/notifier/provider.dart';
import 'package:welcomemate/presentation/screen/auth/state/auth_ui_state.dart';
import 'package:welcomemate/presentation/screen/auth/widget/auth_header.dart';
import 'package:welcomemate/presentation/screen/auth/widget/auth_toggle_link.dart';
import 'package:welcomemate/presentation/common/widget/custom_button.dart';
import 'package:welcomemate/presentation/common/widget/custom_form_field.dart';
import 'package:welcomemate/presentation/util/routes.dart';
import 'package:welcomemate/presentation/util/toaster.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  void _handleLogin() async {
    final isValid = _formKey.currentState?.saveAndValidate() ?? false;
    if (!isValid) return;

    final email = _formKey.currentState?.fields['email']?.value;
    final password = _formKey.currentState?.fields['password']?.value;

    if (email.isEmpty || password.isEmpty) {
      Toaster.showError(context, 'Please fill all the fields');
      return;
    }

    await ref
        .read(authNotifierProvider.notifier)
        .login(
          requestBody: LoginRequest(email: email, password: password),
        );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AuthUiState>(authNotifierProvider, (previous, current) {
      current.maybeWhen(
        success: (login) {
          Toaster.showSuccess(context, "Login successful! Welcome back.");
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
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.all(20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AuthHeader(title: "Sing In To Your Account"),

                  SizedBox(height: 32.h),

                  FormBuilder(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomFormField(
                          name: 'email',
                          labelText: 'Email',
                          hintText: 'username@oneielts.com',
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
                          textInputAction: TextInputAction.done,
                          validators: [
                            FormBuilderValidators.required(
                              errorText: 'Password is required',
                            ),
                            FormBuilderValidators.minLength(
                              6,
                              errorText: 'At least 6 characters',
                            ),
                          ],
                          onSubmitted: _handleLogin,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24.h),

                  CustomButton(
                    label: "Sign In",
                    isLoading: ref.watch(
                      authNotifierProvider.select(
                        (state) => state is LoadingState,
                      ),
                    ),
                    onPressed: _handleLogin,
                  ),

                  SizedBox(height: 24.h),

                  AuthToggleLink(
                    prompt: "Don't have an account? ",
                    linkText: "Sign up",
                    onTap: () {
                      Navigator.pushNamed(context, Routes.register);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
