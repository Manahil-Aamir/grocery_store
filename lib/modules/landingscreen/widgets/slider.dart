import 'package:flutter/material.dart';
import 'package:flutter_project/modules/landingscreen/controller/landing_controller.dart';
import 'package:get/get.dart';

class Sliding extends GetView<LandingController> {
  const Sliding({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: PageView.builder(
        controller: controller.pageController,
        itemCount: controller.images.length,
        itemBuilder: (context, index) {
          return Image.asset(
            controller.images[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
