import 'package:flutter/widgets.dart';
import 'package:flutter_project/shared/components/widgets/customimageview.dart';

class CustomIcon extends StatelessWidget {
  final String image;

  const CustomIcon({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return CustomImageView(imagePath: image);
  }
}
