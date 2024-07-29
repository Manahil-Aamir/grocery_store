import 'package:flutter/material.dart';
import 'package:flutter_project/modules/landingscreen/controller/landing_controller.dart';
import 'package:flutter_project/modules/landingscreen/widgets/customcategory.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_project/shared/resource/assets/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryView extends GetView<LandingController> {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
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
              ),
            ],
          ),
          10.verticalSpace,
          GetBuilder<LandingController>(
            builder: (controller) {
              return SizedBox(
                height: 100.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categories.length,
                  itemBuilder: (context, index) {
                    final category = controller.categories[index];
                    return CustomCategory(
                      category: category,
                    );
                  },
                  separatorBuilder: (context, index) => 15.horizontalSpace,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
