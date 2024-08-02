import 'package:flutter_project/modules/cart/controller/cart_controller.dart';
import 'package:flutter_project/shared/components/classes/customitem.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  int number = 0;
  final CartController cartController = Get.find<CartController>();

  String num() {
    return number.toString();
  }

  void addToCart(CustomItem item, int qty) {
    item.itemToAdd += qty;
    update();
  }

  void removeFromCart(CustomItem item, int qty) {
    item.itemToAdd -= qty;
    if (item.itemToAdd < 0) item.itemToAdd = 0;
    update();
  }

  void handlecart(CustomItem item) {
    if (item.itemToAdd > 0) cartController.addToCart(item, item.itemToAdd);
    cartController.saveCartItems();
    cartController.loadCartItems();
  }
}
