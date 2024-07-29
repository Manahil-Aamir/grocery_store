import 'package:flutter/material.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String name;

  const CategoryCard({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      height: 80.h,
      width: 80.w,
      decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.all(Radius.circular(20.r))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: imageUrl,
              imageSize: const Size(90, 90),
              fit: BoxFit.fill,
            ),
            5.verticalSpace,
            Text(name, style: Theme.of(context).textTheme.headlineLarge),
            5.verticalSpace,
          ],
        ),
      ),
    );
  }
}
