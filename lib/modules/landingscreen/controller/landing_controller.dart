import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/modules/landingscreen/widgets/customcategory.dart';
import 'package:flutter_project/shared/components/classes/items.dart';
import 'package:flutter_project/shared/components/widgets/customitem.dart';
import 'package:flutter_project/shared/resource/assets/images.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  final items = Items();

  List<CustomCategory> categories = [
    const CustomCategory(category: 'Fruits', imageUrl: Images.apple),
    const CustomCategory(category: 'Vege', imageUrl: Images.broccoli),
    const CustomCategory(category: 'Dairy', imageUrl: Images.cheese),
    const CustomCategory(category: 'Meat', imageUrl: Images.meat),
  ];

  List<CustomItem> getbest() {
    final categoryItems = items.categoryItems;
    List<CustomItem> bestDisplay = categoryItems.toList();
    return bestDisplay;
  }

  final PageController pageController = PageController(initialPage: 0);
  late Timer _timer;

  final List<String> images = [Images.banner, Images.banner, Images.banner2];

  void startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      int nextPage = pageController.page!.toInt() + 1;
      if (nextPage == images.length) {
        nextPage = 0;
      }
      pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void onInit() {
    super.onInit();
    startAutoSlide();
  }
}
