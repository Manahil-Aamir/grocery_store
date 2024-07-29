import 'package:flutter/material.dart';
import 'package:flutter_project/shared/components/classes/customitem.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_project/shared/extensions/widget_extensions.dart';
import 'package:flutter_project/shared/routes/Routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final double weight;
  final double price;
  final CustomItem ci;

  const ItemCard({
    super.key,
    required this.name,
    required this.imageUrl,
    this.weight = 1.0,
    required this.price,
    required this.ci,
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: imageUrl,
              imageSize: const Size(150, 100),
              fit: BoxFit.fill,
            ),
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
    ).click(onTap: () {
      Get.toNamed(Routes.product, arguments: ci);
    });
  }
}
