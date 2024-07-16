import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_project/shared/resource/assets/images.dart';
import 'package:flutter_project/shared/routes/Routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 4000), () {
      Get.toNamed(Routes.intro);
    });
    final theme = context.theme;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: theme.primaryColorLight,
        systemNavigationBarColor: theme.primaryColorLight));
    return Scaffold(
      backgroundColor: theme.primaryColorLight,
      body: Center(
        child: CircleAvatar(
          backgroundColor: theme.primaryColorDark,
          radius: 55.r,
          child: CustomImageView(
            imagePath: Images.leaves,
            fit: BoxFit.fill,
            imageSize: Size(70.w, 60.h),
          ),
        )
            .animate()
            .fade()
            .slideY(duration: 1000.ms, begin: 2, curve: Curves.easeInOut),
      ),
    );
  }
}
