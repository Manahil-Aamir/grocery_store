import 'package:flutter/material.dart';
import 'package:flutter_project/modules/cart/controller/cart_controller.dart';
import 'package:flutter_project/modules/cart/widgets/carttile.dart';
import 'package:flutter_project/modules/categoryscreen/controller/category_controller.dart';
import 'package:flutter_project/shared/components/classes/customitem.dart';
import 'package:flutter_project/shared/components/widgets/custom_appbar.dart';
import 'package:flutter_project/shared/components/widgets/custom_button.dart';
import 'package:flutter_project/shared/resource/assets/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartPage extends GetView<CategoryController> {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Cart',
        imageUrl: Images.cart,
      ),
      body: GetBuilder<CartController>(
        builder: (controller) {
          controller.loadCartItems();
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: controller.cartitems.length + 1,
                  itemBuilder: (context, index) {
                    if (index < controller.cartitems.length) {
                      CustomItem item = controller.cartitems[index];
                      return Carttile(item: item);
                    } else {
                      if (controller.cost() > 0) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 12.h),
                          child: Row(
                            children: [
                              Text(
                                'Total:',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                '\$${controller.cost()}',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                      color: const Color(0xFFFF324B),
                                    ),
                              ),
                            ],
                          ),
                        );
                      }
                    }
                    return null;
                  },
                ),
              ),
              10.horizontalSpace,
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomButton(
                  text: 'Proceed to Checkout',
                  onPressed: () {},
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
