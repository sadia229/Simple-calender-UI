import 'package:flutter/material.dart';

import '../../../infrastructure/theme/app.colors.dart';

class AppButton extends StatelessWidget {
  final String buttonName;
  final Function()? onTap;
  final Color? buttonColor;
  final Color? fontColor;
  final Color? borderColor;
  final Color? secondaryColor;
  final String? icon;

  const AppButton({
    super.key,
    required this.buttonName,
    this.onTap,
    this.buttonColor,
    this.fontColor,
    this.borderColor,
    this.icon,
    this.secondaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        splashFactory: InkRipple.splashFactory,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: 14.0,
            horizontal: 24.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [
                AppColors.light.primary,
                AppColors.light.primary2,
              ],
            ),
          ),
          child: Text(
            buttonName,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: fontColor ?? Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
