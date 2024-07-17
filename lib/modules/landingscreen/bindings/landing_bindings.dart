import 'package:flutter_project/modules/landingscreen/controller/landing_controller.dart';
import 'package:get/get.dart';

class LandingBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LandingController());
  }
}
