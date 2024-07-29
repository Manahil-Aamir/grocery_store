import 'package:flutter_project/shared/resource/assets/images.dart';

class Categories {
  final String imageUrl;
  final String name;

  Categories({
    required this.imageUrl,
    required this.name,
  });

  static List<Categories> categories = [
    Categories(name: 'Fruits', imageUrl: Images.apple),
    Categories(name: 'Vege', imageUrl: Images.broccoli),
    Categories(name: 'Dairy', imageUrl: Images.cheese),
    Categories(name: 'Meat', imageUrl: Images.meat),
    Categories(name: 'Fruits', imageUrl: Images.apple),
    Categories(name: 'Vege', imageUrl: Images.broccoli),
    Categories(name: 'Dairy', imageUrl: Images.cheese),
    Categories(name: 'Meat', imageUrl: Images.meat),
  ];

  static List<Categories> all() {
    List<Categories> allCategories = categories.toList();
    return allCategories;
  }
}
