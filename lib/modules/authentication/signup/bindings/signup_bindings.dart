import 'package:flutter_project/modules/authentication/signup/controller/signup_controller.dart';
import 'package:get/get.dart';

class SignupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupController());
  }
}
