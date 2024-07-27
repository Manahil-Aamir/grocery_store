import 'package:flutter/material.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double weight;
  final double price;

  const ItemCard({
    super.key,
    required this.name,
    required this.imageUrl,
    this.weight = 1.0,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      height: 240.h,
      width: 163.w,
      decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.all(Radius.circular(20.r))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 5),
        child: Column(
          children: [
            CustomImageView(imagePath: imageUrl),
            5.verticalSpace,
            Text(name, style: Theme.of(context).textTheme.titleLarge),
            5.verticalSpace,
            Row(
              children: [
                Text('${weight}kg, \$$price',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: const Color(0xFFFF324B))),
                const Spacer(),
                Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: BoxDecoration(
                    color: theme.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        size: 30.r,
                        color: theme.iconTheme.color,
                      ),
                    ),
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
