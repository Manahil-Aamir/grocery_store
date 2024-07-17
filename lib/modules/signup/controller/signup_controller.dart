import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool pwobscure = true;

  void toggle() {
    pwobscure = !pwobscure;
    update();
  }
}
