import 'package:flutter_project/modules/product/controller/product_controller.dart';
import 'package:get/get.dart';

class ProductBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
