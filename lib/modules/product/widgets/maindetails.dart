import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/modules/product/controller/product_controller.dart';
import 'package:flutter_project/shared/components/classes/customitem.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'circularbutton.dart';

class MainDetails extends GetView<ProductController> {
  final CustomItem item;

  const MainDetails({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            item.name,
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(fontSize: 20),
          ),
          const Spacer(),
          CircularButton(
              icon: CupertinoIcons.minus,
              iconColor: theme.disabledColor,
              containerColor: theme.cardColor),
          5.horizontalSpace,
          Text(controller.num(),
              style: Theme.of(context).textTheme.headlineMedium),
          5.horizontalSpace,
          CircularButton(
              icon: Icons.add,
              iconColor: Colors.white,
              containerColor: theme.primaryColor)
        ],
      ),
    );
  }
}
