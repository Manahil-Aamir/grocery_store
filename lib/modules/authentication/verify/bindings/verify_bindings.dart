import 'package:flutter_project/modules/authentication/verify/controller/verify_controller.dart';
import 'package:get/get.dart';

class VerifyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyController());
  }
}
