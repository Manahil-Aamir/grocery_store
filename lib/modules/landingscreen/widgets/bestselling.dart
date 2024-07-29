import 'package:flutter/material.dart';
import 'package:flutter_project/modules/landingscreen/controller/landing_controller.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_project/shared/components/classes/customitem.dart';
import 'package:flutter_project/shared/resource/assets/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Best Selling',
                style: theme.textTheme.headlineMedium,
              ),
              CustomImageView(imagePath: Images.fire),
              const Spacer(),
              Text(
                'See All',
                style: theme.textTheme.headlineSmall
                    ?.copyWith(color: theme.primaryColor),
              ),
            ],
          ),
          10.verticalSpace,
          GetBuilder<LandingController>(
            builder: (controller) {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 16.h,
                  mainAxisExtent: 214.h,
                ),
                shrinkWrap: true,
                primary: false,
                itemCount: controller.getbest().length,
                itemBuilder: (context, index) {
                  var item = controller.getbest()[index];
                  return CustomItem.create(
                      item.name, item.imageUrl, item.weight, item.price, item);
                },
              );
            },
          ),
          20.verticalSpace,
        ],
      ),
    );
  }
}
