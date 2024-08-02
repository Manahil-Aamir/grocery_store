import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/modules/cart/controller/cart_controller.dart';
import 'package:flutter_project/modules/product/widgets/circularbutton.dart';
import 'package:flutter_project/shared/components/classes/customitem.dart';
import 'package:flutter_project/shared/extensions/widget_extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Carttile extends GetView<CartController> {
  final CustomItem item;

  const Carttile({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      decoration: BoxDecoration(border: Border.all(color: theme.cardColor)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 5.w),
        child: ListTile(
          minTileHeight: 100.0.h,
          leading: Image.asset(item.imageUrl, width: 60, height: 60),
          title: Padding(
            padding: EdgeInsets.fromLTRB(0, 5.h, 0, 0),
            child: Text(item.name,
                style: Theme.of(context).textTheme.headlineMedium),
          ),
          subtitle: Text(
            '${item.weight}kg, \$${item.price}',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: const Color(0xFFFF324B)),
          ),
          trailing: SizedBox(
            width: 80.w,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularButton(
                        icon: CupertinoIcons.minus,
                        iconColor: theme.disabledColor,
                        containerColor: theme.cardColor)
                    .click(onTap: () {
                  controller.removeFromCart(item, 1);
                }),
                2.horizontalSpace,
                Text(item.itemInCart.toString(),
                    style: Theme.of(context).textTheme.headlineMedium),
                2.horizontalSpace,
                CircularButton(
                        icon: Icons.add,
                        iconColor: Colors.white,
                        containerColor: theme.primaryColor)
                    .click(onTap: () {
                  controller.addToCart(item, 1);
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
