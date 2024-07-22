import 'package:flutter/material.dart';
import 'package:flutter_project/modules/authentication/login/controller/login_controller.dart';
import 'package:flutter_project/shared/components/widgets/custom_button.dart';
import 'package:flutter_project/shared/components/widgets/custom_form_field.dart';
import 'package:flutter_project/shared/utils/validator/signup_form_validator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/gestures.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor:
        //     Get.isDarkMode ? theme.primaryColorLight : theme.primaryColor,
        centerTitle: true,
        title: Text(
          'Login',
          style: theme.textTheme.displaySmall?.copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Form(
          key: controller.loginFormKey,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.h),
                child: Text(
                  'Welcome',
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              RichText(
                  text: TextSpan(
                      text: 'Enter you Email and Password to sign in.',
                      style: theme.textTheme.bodyMedium,
                      children: [
                    TextSpan(
                      text: '\nEnjoy your Shopping:',
                      style: theme.textTheme.bodyMedium,
                    )
                  ])),
              20.verticalSpace,
              CustomFormField(
                hint: 'Email',
                isSearchField: false.obs,
                validator: (value) => SignupFormValidator.validateEmail(value),
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              20.verticalSpace,
              CustomFormField(
                isSearchField: false.obs,
                hint: 'Password',
                obscureText: true,
                validator: (value) =>
                    SignupFormValidator.validatePassword(value),
                controller: controller.passwordController,
              ),
              35.verticalSpace,
              CustomButton(
                text: 'Login',
                onPressed: controller.login,
              ),
              12.verticalSpace,
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Don\'t have account?',
                  style: theme.textTheme.bodyMedium,
                  children: [
                    TextSpan(
                      text: ' Create new account',
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(color: theme.primaryColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = controller.gotoSignup,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
