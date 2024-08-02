import 'package:flutter/material.dart';
import 'package:flutter_project/constant/get_builder_ids.dart';
import 'package:flutter_project/modules/base/controller/base_controller.dart';
import 'package:flutter_project/modules/cart/view/cart_page.dart';
import 'package:flutter_project/modules/categoryscreen/view/category_page.dart';
import 'package:flutter_project/modules/landingscreen/view/landing_page.dart';
import 'package:flutter_project/modules/profile/view/profile_page.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_project/shared/resource/assets/vectors.dart';
import 'package:get/get.dart';

class BasePage extends GetView<BaseController> {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData existingTheme = Theme.of(context);
    final ThemeData modifiedTheme = existingTheme.copyWith(
      splashColor: Colors.transparent, // Set the splash color to transparent
      highlightColor:
          Colors.transparent, // Set the highlight color to transparent
    );
    return GetBuilder<BaseController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
              child: IndexedStack(
            index: controller.currentIndex,
            children: const [
              LandingPage(),
              CategoryPage(),
              CartPage(),
              ProfilePage(),
            ],
          )),
          bottomNavigationBar: Theme(
            data: modifiedTheme,
            child: BottomNavigationBar(
              onTap: controller.index,
              currentIndex: controller.currentIndex,
              items: [
                _navBarItem(
                  context: context,
                  imagePath: Vectors.home,
                  label: '',
                ),
                _navBarItem(
                  context: context,
                  imagePath: Vectors.category,
                  label: '',
                ),
                _navBarItem(
                  context: context,
                  imagePath: Vectors.cart,
                  label: '',
                ),
                _navBarItem(
                  context: context,
                  imagePath: Vectors.person,
                  label: '',
                ),
              ],
            ),
          ),
        );
      },
      id: GetBuilderIds.basePage,
    );
  }

  BottomNavigationBarItem _navBarItem(
      {required BuildContext context,
      required String label,
      required String imagePath}) {
    return BottomNavigationBarItem(
        icon: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: CustomImageView(
            imagePath: imagePath,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        label: label,
        activeIcon: CustomImageView(
          imagePath: imagePath,
          color: Theme.of(context).primaryColor,
        ));
  }
}
