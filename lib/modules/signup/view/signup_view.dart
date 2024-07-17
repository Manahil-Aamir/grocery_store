import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/modules/signup/controller/signup_controller.dart';
import 'package:flutter_project/shared/components/widgets/customtextfield.dart';
import 'package:flutter_project/shared/resource/styles/app_styles.dart';
import 'package:flutter_project/shared/routes/Routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: theme.primaryColorLight,
          title: const Text('Signup'),
          centerTitle: true,
          actions: const [
            // IconButton()
          ],
        ),
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Create Account',
                      style: Theme.of(context).textTheme.displayLarge),
                  RichText(
                    text: TextSpan(
                      style: theme.textTheme.displayMedium,
                      children: [
                        const TextSpan(
                          text:
                              'Enter your Name, Number, Username and Password to signup ',
                        ),
                        TextSpan(
                          text: 'Already have an account?',
                          style: theme.textTheme.displayMedium?.copyWith(
                            color: theme.primaryColorLight,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(Routes.login);
                            },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GetBuilder<SignupController>(builder: (_) {
                    return Column(
                      children: [
                        CustomTextField(
                          controller: controller.usernameController,
                          labelText: 'First Name',
                          hintText: 'Sarah',
                        ),
                        CustomTextField(
                          controller: controller.usernameController,
                          labelText: 'Last Name',
                          hintText: 'Ali',
                        ),
                        CustomTextField(
                          controller: controller.usernameController,
                          labelText: 'Number',
                          hintText: '03005445567',
                        ),
                        CustomTextField(
                          controller: controller.usernameController,
                          labelText: 'Username',
                          hintText: 'Sarah Ali',
                        ),
                        CustomTextField(
                          controller: controller.passwordController,
                          labelText: 'Password',
                          obscure: controller.pwobscure,
                          onPressed: () {
                            controller.toggle();
                          },
                          icon: Icon(controller.pwobscure
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed(Routes.landing);
                          },
                          style: AppStyles.getElevatedButtonTheme(
                                  isLightTheme: true)
                              .style,
                          child: const Text(
                            'Signup',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
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
                    );
                  }),
                ],
              ),
            ),
          ),
        ));
  }
}
