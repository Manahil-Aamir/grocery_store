import 'package:flutter_project/modules/landingscreen/widgets/customcategory.dart';
import 'package:flutter_project/shared/components/classes/items.dart';
import 'package:flutter_project/shared/components/widgets/customitem.dart';
import 'package:flutter_project/shared/resource/assets/images.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  final items = Items();

  List<CustomCategory> categories = [
    const CustomCategory(category: 'Fruits', imageUrl: Images.apple),
    const CustomCategory(category: 'Vegetables', imageUrl: Images.broccoli),
    const CustomCategory(category: 'Dairy', imageUrl: Images.cheese),
    const CustomCategory(category: 'Meat', imageUrl: Images.meat),
  ];

  List<CustomItem> getbest() {
    final categoryItems = items.categoryItems;
    List<CustomItem> bestDisplay = categoryItems.take(2).toList();
    return bestDisplay;
  }
}
