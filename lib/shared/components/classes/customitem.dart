import 'package:flutter_project/shared/components/widgets/itemcard.dart';

class CustomItem {
  final String name;
  final String imageUrl;
  final double weight;
  final double price;
  final String category;
  final String description;
  final int kcal;
  final bool organic;
  final double review;
  final String expiry;
  int itemInCart;
  final int qty = 0;
  int itemToAdd;

  CustomItem({
    required this.name,
    required this.imageUrl,
    this.weight = 1.0,
    required this.price,
    required this.category,
    required this.description,
    required this.kcal,
    required this.organic,
    required this.review,
    required this.expiry,
    this.itemInCart = 0,
    this.itemToAdd = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'weight': weight,
      'price': price,
      'category': category,
      'description': description,
      'kcal': kcal,
      'organic': organic,
      'review': review,
      'expiry': expiry,
      'itemInCart': itemInCart,
      'qty': qty,
      'itemToAdd': itemToAdd,
    };
  }

  factory CustomItem.fromMap(Map<String, dynamic> map) {
    return CustomItem(
      name: map['name'],
      imageUrl: map['imageUrl'],
      weight: map['weight'] ?? 1.0,
      price: map['price'],
      category: map['category'],
      description: map['description'],
      kcal: map['kcal'],
      organic: map['organic'],
      review: map['review'],
      expiry: map['expiry'],
      itemInCart: map['itemInCart'] ?? 0,
      itemToAdd: map['itemToAdd'] ?? 0,
    );
  }

  static ItemCard create(
      String n, String i, double w, double p, CustomItem ci) {
    return ItemCard(
      name: n,
      imageUrl: i,
      weight: w,
      price: p,
      ci: ci,
    );
  }
}
