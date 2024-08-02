import 'package:flutter_project/shared/components/classes/customitem.dart';

class Items {
  static List<CustomItem> categoryItems = [
    CustomItem(
      imageUrl: 'assets/images/bell_pepper.png',
      name: 'Bell Pepper Red',
      price: 4.0,
      weight: 1.0,
      category: 'Vegetables',
      description: 'Bell Pepper is a sweet pepper that is rich in vitamins.',
      kcal: 20,
      organic: true,
      review: 4.5,
      expiry: '1 Week',
    ),
    CustomItem(
      imageUrl: 'assets/images/lamb_meat.png',
      name: 'Lamb Meat',
      price: 45.0,
      weight: 1.0,
      category: 'Meat',
      description: 'Lamb Meat is rich in protein and essential nutrients.',
      kcal: 250,
      organic: false,
      review: 4.7,
      expiry: '2 Days',
    ),
    CustomItem(
      imageUrl: 'assets/images/arabic_ginger.png',
      name: 'Arabic Ginger',
      price: 4.0,
      weight: 1.0,
      category: 'Spices',
      description:
          'Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine.',
      kcal: 80,
      organic: true,
      review: 4.8,
      expiry: '1 Year',
    ),
    CustomItem(
      imageUrl: 'assets/images/bell_pepper.png',
      name: 'Bell Pepper Red',
      price: 4.0,
      weight: 1.0,
      category: 'Vegetables',
      description: 'Bell Pepper is a sweet pepper that is rich in vitamins.',
      kcal: 20,
      organic: true,
      review: 4.5,
      expiry: '1 Week',
    ),
    CustomItem(
      imageUrl: 'assets/images/lamb_meat.png',
      name: 'Lamb Meat',
      price: 45.0,
      weight: 1.0,
      category: 'Meat',
      description: 'Lamb Meat is rich in protein and essential nutrients.',
      kcal: 250,
      organic: false,
      review: 4.7,
      expiry: '2 Days',
    ),
    CustomItem(
      imageUrl: 'assets/images/arabic_ginger.png',
      name: 'Arabic Ginger',
      price: 4.0,
      weight: 1.0,
      category: 'Spices',
      description:
          'Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine.',
      kcal: 80,
      organic: true,
      review: 4.8,
      expiry: '1 Year',
    ),
  ];

  static CustomItem one() {
    return categoryItems[0];
  }

  static List<CustomItem> allItems() {
    return categoryItems;
  }
}
