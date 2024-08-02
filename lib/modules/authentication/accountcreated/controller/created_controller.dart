import 'package:flutter_project/shared/routes/routes.dart';
import 'package:get/get.dart';

class CreatedController extends GetxController {
  void next() {
    Get.offAllNamed(Routes.base);
  }
}
