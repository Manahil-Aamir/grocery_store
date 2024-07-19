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
              theme.cardColor,
              theme.scaffoldBackgroundColor,
            ],
            stops: const [0, 0.5],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: theme.scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search category',
                      hintStyle: TextStyle(color: theme.primaryColorLight),
                      border: InputBorder.none,
                      fillColor: theme.scaffoldBackgroundColor,
                      prefixIcon:
                          Icon(Icons.search, color: theme.primaryColorLight),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              CustomImageView(
                imagePath: Images.banner,
                fit: BoxFit.fill,
                imageSize: Size(MediaQuery.of(context).size.width, 180.h),
              ),
              SizedBox(height: 14.h),
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
                        ?.copyWith(color: theme.primaryColorLight),
                  )
                ],
              ),
              SizedBox(height: 14.h),
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
              SizedBox(height: 14.h),
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
                        ?.copyWith(color: theme.primaryColorLight),
                  )
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              GetBuilder<LandingController>(builder: (controller) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...controller.getbest().map((c) {
                      return CustomItem(
                        name: c.name,
                        imageUrl: c.imageUrl,
                        price: c.price,
                        weight: c.weight,
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
