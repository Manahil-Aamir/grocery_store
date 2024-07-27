import 'package:flutter_project/modules/base/controller/base_controller.dart';
import 'package:flutter_project/modules/landingscreen/controller/landing_controller.dart';
import 'package:get/get.dart';

class BaseBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BaseController());
    Get.lazyPut(() => LandingController());
  }
}
