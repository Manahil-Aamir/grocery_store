import 'package:flutter/material.dart';
import 'package:flutter_project/shared/routes/Routes.dart';
import 'package:flutter_project/shared/utils/keyboard/keyboard_dismiss.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //Controller Instance
  static SignupController get instance => Get.find();

  // Editing Controller
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final numberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //Form State
  GlobalKey<FormState> signinFormKey = GlobalKey();

  //Login Fields Check Validate
  Future<bool> _isFormValidated() async {
    if (!signinFormKey.currentState!.validate()) {
      return false;
    }
    return true;
  }

  //Signup Logic
  signup() async {
    try {
      dismissKeyboard();
      Get.toNamed(Routes.verify);
      if (await _isFormValidated()) {
        // String email = emailController.text;
        // print(email);
        // Get.toNamed(Routes.verify, arguments: {"email": email});
      }
    } catch (e) {
      print(e);
    }
  }

  void gotoLogin() {
    Get.back();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
