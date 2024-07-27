// import 'package:flutter/material.dart';
// import 'package:flutter_project/shared/components/widgets/customimageview.dart';
// import 'package:flutter_project/shared/resource/assets/images.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:badges/badges.dart' as badges;

// class HomeAppBar extends StatelessWidget {
//   const HomeAppBar({super.key});
//   // @override
//   // Size get preferredSize => const Size.fromHeight(kToolbarHeight);

//   @override
//   Widget build(BuildContext context) {
//     final theme = context.theme;
//     return ListTile(
//       minLeadingWidth: 56.w,
//       leading: CircleAvatar(
//           backgroundColor: theme.cardColor,
//           minRadius: 20.r,
//           child: Center(
//             child: CustomImageView(
//               imagePath: Images.pic,
//               imageSize: const Size(30, 30),
//             ),
//           )),
//       title: Text(
//         'Welcome',
//         style: Theme.of(context)
//             .textTheme
//             .bodySmall
//             ?.copyWith(color: Colors.white),
//       ),
//       subtitle: Text(
//         'Sarah',
//         style: Theme.of(context).textTheme.bodyLarge,
//       ),
//       trailing: badges.Badge(
//         position: badges.BadgePosition.bottomEnd(bottom: -20, end: 5),
//         badgeContent: Text(
//           '2',
//           style: theme.textTheme.bodySmall?.copyWith(color: Colors.white),
//         ),
//         badgeStyle: const badges.BadgeStyle(badgeColor: Color(0xFFFF324B)),
//         child: const Icon(Icons.shopping_cart),
//       ),
//     );
//   }
// }
