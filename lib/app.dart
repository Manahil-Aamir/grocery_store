import 'package:flutter/material.dart';
import 'package:flutter_project/modules/profile/controller/profile_controller.dart';
import 'package:flutter_project/shared/resource/theme/app_theme.dart';
import 'package:flutter_project/shared/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class App extends StatelessWidget {
  App({super.key});

  final ProfileController themeController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        rebuildFactor: (old, data) => true,
        builder: (context, widget) {
          return GetBuilder<ProfileController>(builder: (controller) {
            return GetMaterialApp(
              title: "",
              theme: AppTheme.getThemeData(isLight: controller.isDarkMode),
              useInheritedMediaQuery: true,
              debugShowCheckedModeBanner: false,
              builder: (context, widget) {
                widget ??= const Center(
                  child: Text('App Widget is null'),
                );
                return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: const TextScaler.linear(1.0)),
                  child: widget,
                );
              },
              initialRoute: Routes.splash,
              getPages: Pages.allPages,
            );
          });
        });
  }
}
