import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/modules/authentication/signup/controller/signup_controller.dart';
import 'package:flutter_project/shared/components/widgets/custom_button.dart';
import 'package:flutter_project/shared/components/widgets/custom_form_field.dart';
import 'package:flutter_project/shared/utils/validator/signup_form_validator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Get.isDarkMode ? theme.primaryColorLight : theme.primaryColor,
        centerTitle: true,
        title: Text(
          'Signup',
          style: theme.textTheme.displaySmall?.copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Form(
          key: controller.signinFormKey,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.h),
                child: Text(
                  'Create Account',
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: theme.textTheme.bodyMedium,
                  children: [
                    const TextSpan(
                      text:
                          'Enter your Name, Number, Username and Password to signup ',
                    ),
                    TextSpan(
                      text: 'Already have an account?',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.primaryColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          controller.gotoLogin();
                        },
                    ),
                  ],
                ),
              ),
              20.verticalSpace,
              CustomFormField(
                hint: 'First Name',
                isSearchField: false.obs,
                validator: (value) => SignupFormValidator.validateName(value),
                controller: controller.firstnameController,
                keyboardType: TextInputType.text,
              ),
              20.verticalSpace,
              CustomFormField(
                hint: 'Last Name',
                isSearchField: false.obs,
                validator: (value) => SignupFormValidator.validateName(value),
                controller: controller.lastnameController,
                keyboardType: TextInputType.text,
              ),
              20.verticalSpace,
              CustomFormField(
                hint: 'Number',
                isSearchField: false.obs,
                validator: (value) =>
                    SignupFormValidator.validatePhoneNumber(value),
                controller: controller.numberController,
                keyboardType: TextInputType.emailAddress,
              ),
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
                text: 'Signup',
                onPressed: controller.signup,
              ),
              12.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'By signup up, you agree to our Term Conditions and Privacy Policy',
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
