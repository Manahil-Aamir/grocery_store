import 'package:flutter/material.dart';
import 'package:flutter_project/modules/landingscreen/controller/landing_controller.dart';
import 'package:flutter_project/modules/landingscreen/widgets/bestselling.dart';
import 'package:flutter_project/modules/landingscreen/widgets/categoryview.dart';
import 'package:flutter_project/modules/landingscreen/widgets/homeappbar.dart';
import 'package:flutter_project/modules/landingscreen/widgets/slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LandingPage extends GetView<LandingController> {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: theme.primaryColorDark,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search category',
                  hintStyle: TextStyle(color: theme.hintColor),
                  border: InputBorder.none,
                  fillColor: theme.primaryColorDark,
                  prefixIcon: Icon(Icons.search, color: theme.primaryColor),
                ),
              ),
            ),
          ),
          12.verticalSpace,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Sliding(),
                  14.verticalSpace,
                  const CategoryView(),
                  14.verticalSpace,
                  const BestSelling(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
