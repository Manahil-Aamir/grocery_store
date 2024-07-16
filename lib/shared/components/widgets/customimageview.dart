import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/shared/resource/assets/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CustomImageView extends StatelessWidget {
  final String imagePath;
  final Size? imageSize;
  final BoxFit fit;
  final Color? color;
  CustomImageView(
      {super.key,
      required this.imagePath,
      this.imageSize,
      this.fit = BoxFit.contain,
      this.color});

  int? cacheWidth, cacheHeight;
  @override
  Widget build(BuildContext context) {
    Size targetSize = const Size(100, 50);
    if (imageSize != null) {
      targetSize = imageSize!;
    }
    if (targetSize.height < targetSize.width) {
      cacheHeight = targetSize.height.cacheSize(context: context);
    } else {
      cacheWidth = targetSize.width.cacheSize(context: context);
    }
    return _imageAsPerType();
  }

  Widget _imageAsPerType() {
    if (imagePath.isEmpty) {
      return const SizedBox.shrink();
    }
    if (imagePath.startsWith('http')) {
      return _networkImageWidthCache();
    } else if (imagePath.contains('assets/images/')) {
      return _assetsImageWithCache();
    } else if (imagePath.endsWith('.svg')) {
      return _assetsSvgImage();
    }
    return _fileImage();
  }

  Widget _assetsSvgImage() {
    return SvgPicture.asset(
      imagePath,
      height: imageSize?.height,
      width: imageSize?.width,
      fit: fit,
      // ignore: deprecated_member_use
      color: color,
    );
  }

  Widget _assetsImageWithCache() {
    return Image.asset(
      imagePath.isEmpty ? Images.leaf : imagePath,
      height: imageSize?.height,
      width: imageSize?.width,
      cacheHeight: cacheHeight,
      cacheWidth: cacheWidth,
      fit: fit,
    );
  }

  Widget _fileImage() {
    return Image.file(
      File(imagePath),
      height: imageSize?.height,
      width: imageSize?.width,
      cacheHeight: cacheHeight,
      cacheWidth: cacheWidth,
      fit: fit,
    );
  }

  Widget _networkImageWidthCache() {
    return CachedNetworkImage(
      imageUrl: imagePath,
      height: imageSize?.height.h,
      width: imageSize?.width.w,
      memCacheHeight: cacheHeight,
      memCacheWidth: cacheWidth,
      errorWidget: (context, url, error) => const Icon(Icons.error),
      fit: fit,
      progressIndicatorBuilder: (context, url, downloadProgress) {
        return Center(
          child: CircularProgressIndicator(
            value: downloadProgress.progress,
          ),
        );
      },
    );
  }
}

extension ImageExtension on num {
  int cacheSize({required BuildContext context}) {
    return (this * MediaQuery.of(context).devicePixelRatio).round();
  }
}
