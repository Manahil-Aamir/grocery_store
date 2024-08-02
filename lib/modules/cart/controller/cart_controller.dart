import 'dart:convert';

import 'package:flutter_project/shared/components/classes/customitem.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartController extends GetxController {
  List<CustomItem> cartitems = [];

  @override
  void onInit() {
    super.onInit();
    print(cartitems);
    loadCartItems();
  }

  void addToCart(CustomItem item, int qty) {
    final index = cartitems.indexWhere((element) => element.name == item.name);
    if (index != -1) {
      cartitems[index].itemInCart += qty;
    } else {
      item.itemInCart += qty;
      cartitems.add(item);
    }
    saveCartItems();
    loadCartItems();
    update();
  }

  void removeFromCart(CustomItem item, int qty) {
    final index = cartitems.indexWhere((element) => element.name == item.name);
    cartitems[index].itemInCart -= qty;
    if (cartitems[index].itemInCart < 0) cartitems[index].itemInCart = 0;
    if (cartitems[index].itemInCart == 0) {
      cartitems.remove(cartitems[index]);
    }
    saveCartItems();
    loadCartItems();
    update();
  }

  Future<void> saveCartItems() async {
    final prefs = await SharedPreferences.getInstance();
    final String encodedData =
        jsonEncode(cartitems.map((item) => item.toMap()).toList());
    await prefs.setString('cartItems', encodedData);
  }

  Future<void> loadCartItems() async {
    final prefs = await SharedPreferences.getInstance();
    final String? encodedData = prefs.getString('cartItems');
    if (encodedData != null) {
      final List<dynamic> decodedData = jsonDecode(encodedData);
      cartitems = decodedData.map((item) => CustomItem.fromMap(item)).toList();
      update();
    }
  }

  double cost() {
    return cartitems.fold(
        0, (total, item) => total + (item.price * item.itemInCart));
  }
}
