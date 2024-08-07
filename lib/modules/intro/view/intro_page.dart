import 'package:flutter/material.dart';
import 'package:flutter_project/modules/intro/controller/intro_controller.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_project/shared/resource/assets/images.dart';
import 'package:flutter_project/shared/resource/styles/app_styles.dart';
import 'package:flutter_project/shared/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class IntroPage extends GetView<IntroController> {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              theme.primaryColorLight.withOpacity(0.05),
              theme.scaffoldBackgroundColor,
            ],
            stops: const [0, 0.5],
          ),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Transform(
                  transform: Matrix4.identity(),
                  child: Opacity(
                    opacity: 0.39,
                    child: CustomImageView(
                      imagePath: Images.leaf,
                      fit: BoxFit.fill,
                      imageSize: Size(45.39.w, 38.91.h),
                    ),
                  ),
                ),
              ),
            ),
            CircleAvatar(
              radius: 33.r,
              backgroundColor: theme.scaffoldBackgroundColor,
              child: Center(
                child: CustomImageView(
                  imagePath: Images.leaves,
                  fit: BoxFit.fill,
                  imageSize: Size(50.w, 50.h),
                ),
              ),
            ),
            Text(
              'Get your groceries delivered to your home',
              style: Theme.of(context).textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'The best delivery app in town for delivering your daily fresh groceries',
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            ElevatedButton(
              onPressed: () {
                // print('hi');
                Get.offAllNamed(Routes.login);
              },
              style: AppStyles.getElevatedButtonTheme(isLightTheme: true).style,
              child: const Text(
                'Shop now',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomImageView(
                  imagePath:
                      (Get.isDarkMode) ? Images.darkfruits : Images.fruits,
                  fit: BoxFit.fill,
                  imageSize: Size(MediaQuery.of(context).size.width, 360.h),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
