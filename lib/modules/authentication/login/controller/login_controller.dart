import 'package:flutter/widgets.dart';
import 'package:flutter_project/shared/routes/Routes.dart';
import 'package:flutter_project/shared/utils/keyboard/keyboard_dismiss.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //Controller Instance
  static LoginController get instance => Get.find();

  // Editing Controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //Form State
  GlobalKey<FormState> loginFormKey = GlobalKey();

  //Login Fields Check Validate
  Future<bool> _isFormValidated() async {
    if (!loginFormKey.currentState!.validate()) {
      return false;
    }
    return true;
  }

  //Login Logic
  login() async {
    try {
      Get.offAllNamed(Routes.base);
      dismissKeyboard();
      // if (await _isFormValidated()) {
      //   Get.offAllNamed(Routes.landing);
      // }
    } catch (e) {
      print(e);
    }
  }

  void gotoSignup() {
    Get.toNamed(Routes.signup);
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
