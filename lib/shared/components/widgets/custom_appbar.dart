import 'package:flutter/material.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? imageUrl;

  const CustomAppbar({super.key, this.imageUrl, this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return AppBar(
      backgroundColor: theme.cardColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title ?? '',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          if (imageUrl != null)
            CustomImageView(
              imagePath: imageUrl!,
              imageSize: const Size(25, 25),
              fit: BoxFit.fill,
            )
        ],
      ),
      centerTitle: true,
      actions: [
        Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.scaffoldBackgroundColor,
              border: Border.all(color: theme.cardColor, width: 1.0),
            ),
            child: const Icon(
              Icons.search_outlined,
            ))
      ],
    );
  }
}
