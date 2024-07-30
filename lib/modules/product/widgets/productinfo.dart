import 'package:flutter/widgets.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductInfo extends StatelessWidget {
  final String imageUrl;
  final String info;
  final String detail;

  const ProductInfo({
    super.key,
    required this.imageUrl,
    required this.detail,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
        height: 67.h,
        width: 163.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: theme.cardColor, width: 1.0),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(8.w, 7.w, 30.w, 7.w),
          child: Row(children: [
            CustomImageView(
              imagePath: imageUrl,
              imageSize: const Size(40, 40),
              fit: BoxFit.fill,
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  detail.toString(),
                  style: theme.textTheme.bodyLarge
                      ?.copyWith(color: theme.primaryColor),
                ),
                Text(info, style: theme.textTheme.bodyMedium)
              ],
            )
          ]),
        ));
  }
}
