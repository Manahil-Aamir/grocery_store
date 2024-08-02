import 'package:flutter_project/shared/components/classes/customitem.dart';

class CartItems {
  static List<CustomItem> cartitems = [];

  static void addToCart(CustomItem item) {
    final index = cartitems.indexWhere((element) => element.name == item.name);
    if (index != -1) {
      cartitems[index].itemInCart++;
    } else {
      cartitems.add(item);
    }
    print(cartitems);
  }

  static void removeFromCart(CustomItem item) {
    item.itemInCart--;
    if (item.itemInCart < 0) item.itemInCart = 0;
    if (item.itemInCart < 1) cartitems.remove(item);
  }
}
