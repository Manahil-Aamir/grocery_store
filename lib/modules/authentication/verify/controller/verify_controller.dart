import 'package:flutter_project/shared/routes/routes.dart';
import 'package:get/get.dart';

class VerifyController extends GetxController {
  // final String email = Get.arguments["email"];

  void cancel() {
    Get.back();
  }

  void next() {
    Get.offAllNamed(Routes.created);
  }
}
