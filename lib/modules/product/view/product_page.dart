import 'package:flutter/material.dart';
import 'package:flutter_project/modules/product/controller/product_controller.dart';
import 'package:flutter_project/modules/product/widgets/details.dart';
import 'package:flutter_project/modules/product/widgets/maindetails.dart';
import 'package:flutter_project/shared/components/classes/customitem.dart';
import 'package:flutter_project/shared/components/widgets/custom_appbar.dart';
import 'package:flutter_project/shared/components/widgets/custom_button.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductPage extends GetView<ProductController> {
  const ProductPage({
    super.key,
  });

  //final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    CustomItem item = Get.arguments;
    final theme = context.theme;
    return Scaffold(
        appBar: const CustomAppbar(),
        body: Column(
          children: [
            SizedBox(
              height: 400.h,
              child: Stack(
                children: [
                  Positioned(
                    top: -530.h,
                    left: -258.w,
                    child: Container(
                      height: 906.h,
                      width: 906.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: theme.cardColor),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.1,
                    left: MediaQuery.of(context).size.width * 0.20,
                    right: MediaQuery.of(context).size.width * 0.20,
                    child: CustomImageView(
                        imagePath: item.imageUrl,
                        imageSize: const Size(270, 250),
                        fit: BoxFit.fill),
                  ),
                ],
              ),
            ),
            MainDetails(item: item),
            8.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                children: [
                  Text('${item.weight}kg, \$${item.price}',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: const Color(0xFFFF324B))),
                ],
              ),
            ),
            8.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(item.description,
                  style: Theme.of(context).textTheme.displayMedium),
            ),
            8.verticalSpace,
            Details(item: item),
            8.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: CustomButton(
                text: 'Add to Cart',
                onPressed: () {
                  controller.handlecart(item);
                },
              ),
            ),
          ],
        ));
  }
}
