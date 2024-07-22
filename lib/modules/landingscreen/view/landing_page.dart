import 'package:flutter/material.dart';
import 'package:flutter_project/modules/landingscreen/controller/landing_controller.dart';
import 'package:flutter_project/modules/landingscreen/widgets/customcategory.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_project/shared/components/widgets/customitem.dart';
import 'package:flutter_project/shared/resource/assets/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LandingPage extends GetView<LandingController> {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              (Get.isDarkMode)
                  ? theme.cardColor.withOpacity(0.5)
                  : theme.cardColor,
              theme.scaffoldBackgroundColor,
            ],
            stops: const [0, 0.5],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
              CustomImageView(
                imagePath: Images.banner,
                fit: BoxFit.fill,
                imageSize: Size(MediaQuery.of(context).size.width, 180.h),
              ),
              14.verticalSpace,
              Row(
                children: [
                  Text(
                    'Categories',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  CustomImageView(imagePath: Images.foodie),
                  const Spacer(),
                  Text(
                    'See All',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: theme.primaryColor),
                  )
                ],
              ),
              14.verticalSpace,
              GetBuilder<LandingController>(builder: (controller) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...controller.categories.map((c) {
                      return CustomCategory(
                        category: c.category,
                        imageUrl: c.imageUrl,
                      );
                    }),
                  ],
                );
              }),
              14.verticalSpace,
              Row(
                children: [
                  Text(
                    'Best Selling',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  CustomImageView(imagePath: Images.fire),
                  const Spacer(),
                  Text(
                    'See All',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: theme.primaryColor),
                  )
                ],
              ),
              14.verticalSpace,
              GetBuilder<LandingController>(builder: (controller) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...controller.getbest().map((c) {
                      return CustomItem.create(
                        c.name,
                        c.imageUrl,
                        c.weight,
                        c.price,
                      );
                    }),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
