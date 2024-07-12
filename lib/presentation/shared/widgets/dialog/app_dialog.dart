
import 'package:flutter/material.dart';
import 'package:sadiaassignmentproject/infrastructure/utils/screen_extensions.dart';
import '../../../../infrastructure/theme/app.colors.dart';
import '../../../../infrastructure/theme/app.theme.dart';
import '../button/app_button.dart';

class AppDialog extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final bool isShowButton;
  final String? buttonText;
  final VoidCallback? onTap;
  final double? imageHeight;
  final VoidCallback? cancelButton;

  const AppDialog({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.isShowButton,
    this.onTap,
    this.buttonText,
    this.imageHeight,  this.cancelButton
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Image.asset(image, height: imageHeight??  90),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: AppTheme.light.textTheme.bodyLarge?.copyWith(
                    color: AppColors.light.fonts,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: AppTheme.light.textTheme.bodyMedium?.copyWith(
                    color: AppColors.light.primary5,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: context.screenHeight * 0.01),
          if (isShowButton == true)
            Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 20),
              child: AppButton(buttonName: buttonText ?? "", onTap: onTap),
            ),
        ],
      ),
    );
  }
}
