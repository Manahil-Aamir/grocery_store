import 'package:flutter_project/modules/authentication/accountcreated/controller/created_controller.dart';
import 'package:get/get.dart';

class CreatedBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatedController());
  }
}
