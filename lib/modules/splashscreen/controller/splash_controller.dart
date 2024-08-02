import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_project/shared/routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Future.delayed(
      1000.ms,
      () => Get.toNamed(Routes.intro),
    );
    super.onReady();
  }
}
