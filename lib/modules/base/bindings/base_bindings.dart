import 'package:flutter_project/modules/base/controller/base_controller.dart';
import 'package:flutter_project/modules/cart/controller/cart_controller.dart';
import 'package:flutter_project/modules/categoryscreen/controller/category_controller.dart';
import 'package:flutter_project/modules/landingscreen/controller/landing_controller.dart';
import 'package:flutter_project/modules/profile/controller/profile_controller.dart';
import 'package:get/get.dart';

class BaseBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BaseController());
    Get.lazyPut(() => LandingController());
    Get.lazyPut(() => CategoryController());
    Get.lazyPut(() => CartController());
    Get.lazyPut(() => ProfileController());
  }
}
