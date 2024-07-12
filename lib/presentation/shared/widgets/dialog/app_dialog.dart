// import 'package:enova_vpn/infrastructure/theme/assets/app.assets.dart';
// import 'package:enova_vpn/infrastructure/utils/screen_extensions.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// import '../../../../infrastructure/theme/app.colors.dart';
// import '../../../../infrastructure/theme/app.theme.dart';
// import '../app_button.dart';
//
// class AppDialog extends StatelessWidget {
//   final String image;
//   final String title;
//   final String subtitle;
//   final bool isShowButton;
//   final String? buttonText;
//   final VoidCallback? onTap;
//   final double? imageHeight;
//   final VoidCallback cancelButton;
//
//   const AppDialog({
//     Key? key,
//     required this.image,
//     required this.title,
//     required this.subtitle,
//     required this.isShowButton,
//     this.onTap,
//     this.buttonText,
//     this.imageHeight, required this.cancelButton
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       insetPadding: const EdgeInsets.all(24),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(24),
//       ),
//       contentPadding: EdgeInsets.zero,
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           InkWell(
//             borderRadius: BorderRadius.circular(50),
//             splashColor: Colors.transparent,
//             onTap: cancelButton,
//             child: Align(
//               alignment: Alignment.topRight,
//               child: Padding(
//                 padding:
//                     const EdgeInsets.only(left: 16.0, right: 24.0, top: 24.0),
//                 child:
//                     Image.asset(AppAssets.light.icons.cancelIcon, height: 24),
//               ),
//             ),
//           ),
//           Image.asset(image, height: imageHeight??  140.h),
//           Padding(
//             padding: const EdgeInsets.all(32.0),
//             child: Column(
//               children: [
//                 Text(
//                   title,
//                   textAlign: TextAlign.center,
//                   style: AppTheme.light.textTheme.titleSmall?.copyWith(
//                     color: AppColors.light.primary,
//                   ),
//                 ),
//                 const SizedBox(height: 16.0),
//                 Text(
//                   subtitle,
//                   textAlign: TextAlign.center,
//                   style: AppTheme.light.textTheme.bodyMedium?.copyWith(
//                     color: AppColors.light.ternary,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: context.screenHeight * 0.01),
//           if (isShowButton == true)
//             Padding(
//               padding:
//                   const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 40),
//               child: AppButton(buttonName: buttonText ?? "", onTap: onTap),
//             ),
//         ],
//       ),
//     );
//   }
// }
