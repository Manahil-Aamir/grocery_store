import 'package:flutter/material.dart';
import 'package:flutter_project/constant/get_builder_ids.dart';
import 'package:flutter_project/modules/landingscreen/controller/landing_controller.dart';
import 'package:flutter_project/modules/landingscreen/widgets/customcategory.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryView extends GetView<LandingController> {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandingController>(
      builder: (controller) {
        return SizedBox(
          height: 100.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: controller.categories.length,
            itemBuilder: (context, index) {
              final category = controller.categories[index];
              return CustomCategory(
                category: category.category,
                imageUrl: category.imageUrl,
              );
            },
            separatorBuilder: (context, index) => 15.horizontalSpace,
          ),
        );
      },
    );
  }
}
