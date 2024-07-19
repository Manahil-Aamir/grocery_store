import 'package:flutter/material.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double? weight;
  final double price;

  const CustomItem({
    super.key,
    required this.name,
    required this.imageUrl,
    this.weight = 1,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      height: 214.h,
      width: 163.w,
      decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.all(Radius.circular(20.r))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
        child: Column(
          children: [
            CustomImageView(imagePath: imageUrl),
            SizedBox(height: 10.h),
            Text(name, style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 5.h),
            Row(
              children: [
                Text('${weight}kg, \$$price',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: theme.colorScheme.secondary)),
                const Spacer(),
                Container(
                  height: 45.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                    color: theme.primaryColorLight,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add, size: 30.r),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
