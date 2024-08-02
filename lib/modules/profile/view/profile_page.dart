import 'package:flutter/material.dart';
import 'package:flutter_project/modules/profile/controller/profile_controller.dart';
import 'package:flutter_project/shared/components/widgets/custom_appbar.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_project/shared/resource/assets/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Profile',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: theme.cardColor,
                  radius: 70.r,
                  child: Center(
                    child: CustomImageView(
                      imagePath: Images.pic,
                      imageSize: const Size(100, 100),
                    ),
                  ),
                ),
              ],
            ),
            7.verticalSpace,
            Row(
              children: [
                Text(
                  'Name :',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                5.horizontalSpace,
                Text(
                  'Sarah',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontSize: 18),
                ),
              ],
            ),
            Row(
              children: [
                GetBuilder<ProfileController>(builder: (controller) {
                  return Switch(
                    value: controller.isDarkMode,
                    onChanged: (value) {
                      controller.toggleTheme();
                    },
                  );
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
