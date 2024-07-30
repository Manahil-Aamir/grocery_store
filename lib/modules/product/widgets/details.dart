import 'package:flutter/material.dart';
import 'package:flutter_project/modules/product/controller/product_controller.dart';
import 'package:flutter_project/modules/product/widgets/productinfo.dart';
import 'package:flutter_project/shared/components/classes/customitem.dart';
import 'package:flutter_project/shared/resource/assets/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Details extends GetView<ProductController> {
  final CustomItem item;

  const Details({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 16.0.w,
        runSpacing: 16.0.h,
        children: [
          ProductInfo(
            imageUrl: Images.organic,
            detail: item.organic.toString(),
            info: 'Organic',
          ),
          ProductInfo(
            imageUrl: Images.expiry,
            detail: item.expiry,
            info: 'Expiry',
          ),
          ProductInfo(
            imageUrl: Images.star,
            detail: item.review.toString(),
            info: 'Reviews',
          ),
          ProductInfo(
            imageUrl: Images.weight,
            detail: '${item.kcal}kcal',
            info: '100 gram',
          ),
        ],
      ),
    );
  }
}
