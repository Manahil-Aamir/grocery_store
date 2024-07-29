import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project/modules/categoryscreen/controller/category_controller.dart';
import 'package:flutter_project/modules/categoryscreen/widgets/categorycard.dart';
import 'package:flutter_project/shared/components/classes/categories.dart';
import 'package:get/get.dart';

class CategoryPage extends GetView<CategoryController> {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories',
            style: Theme.of(context).textTheme.displayMedium),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemCount: controller.categories.length,
        itemBuilder: (context, index) {
          final category = controller.categories[index];
          return CategoryCard(
            imageUrl: category.imageUrl,
            name: category.name,
          );
        },
      ),
    );
  }
}
