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
  final int itemInCart;

  const CustomItem({
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
  });

  static ItemCard create(String n, String i, double w, double p) {
    return ItemCard(
      name: n,
      imageUrl: i,
      weight: w,
      price: p,
    );
  }
}
