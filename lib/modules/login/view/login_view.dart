import 'package:flutter/material.dart';
import 'package:flutter_project/modules/login/controller/login_controller.dart';
import 'package:flutter_project/shared/components/widgets/customtextfield.dart';
import 'package:flutter_project/shared/resource/styles/app_styles.dart';
import 'package:flutter_project/shared/routes/Routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: theme.primaryColorLight,
          title: const Text('Login'),
          centerTitle: true,
          actions: const [
            // IconButton()
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('WELCOME',
                      style: Theme.of(context).textTheme.displayLarge),
                  Text(
                      'Enter your Username and Password to login \nEnjoy your shopping',
                      style: Theme.of(context).textTheme.displayMedium),
                  SizedBox(height: 20.h),
                  GetBuilder<LoginController>(builder: (_) {
                    return Column(
                      children: [
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
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            SizedBox(height: 8.h),
                            TextButton(
                              onPressed: () {
                                Get.toNamed(Routes.signup);
                              },
                              child: Text('Signup',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          color: theme.primaryColorLight)),
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
