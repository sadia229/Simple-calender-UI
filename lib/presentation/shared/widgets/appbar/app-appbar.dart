//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
//   final String? text;
//   final bool isShowSubscription;
//   final bool isShowBackButton;
//   final String? actionIcon;
//   final VoidCallback? onClicked;
//
//   const CustomAppbar({
//     Key? key,
//     this.text,
//     required this.isShowSubscription,
//     this.onClicked,
//     this.actionIcon,
//     required this.isShowBackButton,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.white,
//       automaticallyImplyLeading: false,
//       surfaceTintColor: Colors.white,
//       leadingWidth: 0.0,
//       titleSpacing: 0,
//       elevation: 0,
//       title: Padding(
//         padding: const EdgeInsets.only(left: 8.0, right: 8.0),
//         child: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 16.0),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   isShowBackButton == true
//                       ? InkWell(
//                           borderRadius: BorderRadius.circular(50),
//                           onTap: () => Get.back(),
//                           child: Container(
//                             padding: const EdgeInsets.all(16.0),
//                             child: Image.asset(
//                               AppAssets.light.icons.leftArrow,
//                               height: 24,
//                             ),
//                           ),
//                         )
//                       : InkWell(
//                           borderRadius: BorderRadius.circular(50),
//                           onTap: () => Get.back(),
//                           child: Container(
//                             padding: const EdgeInsets.all(0.0),
//                             child: Image.asset(
//                               AppAssets.light.icons.leftArrow,
//                               height: 24,
//                               color: Colors.transparent,
//                             ),
//                           ),
//                         ),
//                   Text(
//                     text ?? "",
//                     style: context.isDarkMode
//                         ? AppTheme.dark.textTheme.titleMedium
//                         : AppTheme.light.textTheme.titleMedium,
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer(),
//             if (isShowSubscription == true)
//               Padding(
//                 padding: const EdgeInsets.only(top: 16.0),
//                 child: InkWell(
//                   onTap: onClicked,
//                   splashColor: AppColors.light.primary5,
//                   borderRadius: BorderRadius.circular(50),
//                   child: Container(
//                     //color: Colors.yellowAccent,
//                     padding: const EdgeInsets.all(16.0),
//                     child: Image.asset(
//                       actionIcon ?? "",
//                       height: 24,
//                     ),
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//     return Container(
//       color: Colors.white,
//       height: 100,
//       padding: const EdgeInsets.only(left: 8.0, right: 8.0),
//       child: Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 24.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 isShowBackButton == true
//                     ? InkWell(
//                         borderRadius: BorderRadius.circular(50),
//                         onTap: () => Get.back(),
//                         child: Container(
//                           padding: const EdgeInsets.all(16.0),
//                           child: Image.asset(
//                             AppAssets.light.icons.leftArrow,
//                             height: 24,
//                           ),
//                         ),
//                       )
//                     : InkWell(
//                         borderRadius: BorderRadius.circular(50),
//                         onTap: () => Get.back(),
//                         child: Container(
//                           padding: const EdgeInsets.all(0.0),
//                           child: Image.asset(
//                             AppAssets.light.icons.leftArrow,
//                             height: 24,
//                             color: Colors.transparent,
//                           ),
//                         ),
//                       ),
//                 Text(
//                   text ?? "",
//                   style: context.isDarkMode
//                       ? AppTheme.dark.textTheme.titleMedium
//                       : AppTheme.light.textTheme.titleMedium,
//                 ),
//               ],
//             ),
//           ),
//           const Spacer(),
//           if (isShowSubscription == true)
//             Padding(
//               padding: const EdgeInsets.only(top: 24.0),
//               child: InkWell(
//                 onTap: onClicked,
//                 splashColor: AppColors.light.primary5,
//                 borderRadius: BorderRadius.circular(50),
//                 child: Container(
//                   //color: Colors.yellowAccent,
//                   padding: const EdgeInsets.all(16.0),
//                   child: Image.asset(
//                     actionIcon ?? "",
//                     height: 24,
//                   ),
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
