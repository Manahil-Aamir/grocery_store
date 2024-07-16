import 'package:flutter/material.dart';
import 'package:flutter_project/modules/login/controller/login_controller.dart';
import 'package:flutter_project/shared/components/widgets/customtextfield.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
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
          child: Column(
            children: [
              Text('WELCOME',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge
                      ?.copyWith(fontWeight: FontWeight.w500)),
              SizedBox(height: 20.h),
              GetBuilder<LoginController>(builder: (_) {
                return Column(
                  children: [
                    CustomTextField(
                      controller: controller.usernameController,
                      labelText: 'Username',
                      hintText: 'Sarah Ali',
                    ),
                    SizedBox(height: 20.h),
                    CustomTextField(
                      controller: controller.passwordController,
                      labelText: 'Password',
                      onPressed: () {
                        controller.toggle();
                      },
                      icon: const Icon(Icons.remove_red_eye_outlined),
                    ),
                  ],
                );
              }),
            ],
          ),
        ));
  }
}
