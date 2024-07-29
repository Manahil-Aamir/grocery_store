import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/modules/product/controller/product_controller.dart';
import 'package:flutter_project/shared/components/classes/customitem.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductPage extends GetView<ProductController> {
  const ProductPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    CustomItem item = Get.arguments;
    final theme = context.theme;
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: -530.h,
          left: -258.w,
          child: Container(
            height: 906.h,
            width: 906.w,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: theme.cardColor),
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
        Positioned(
          top: 600.h,
          child: const Column(
            children: [],
          ),
        )
      ],
    ));
  }
}
