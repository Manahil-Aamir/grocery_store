import 'package:flutter/material.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomCategory extends StatelessWidget {
  final String category;
  final String imageUrl;

  const CustomCategory({
    super.key,
    required this.category,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Column(
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundColor: theme.cardColor,
          child: CustomImageView(imagePath: imageUrl),
        ),
        SizedBox(height: 5.h),
        Text(
          category,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
