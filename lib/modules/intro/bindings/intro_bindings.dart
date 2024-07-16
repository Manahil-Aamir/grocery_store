import 'package:flutter_project/modules/intro/controller/intro_controller.dart';
import 'package:get/get.dart';

class IntroBindings extends Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => IntroController());
  }
  
}