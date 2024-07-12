import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/theme/app.colors.dart';
import '../../../infrastructure/theme/app.theme.dart';

class AppTextField extends StatelessWidget {
  final String? icon;
  final String? prefixIcon;
  final String? hintText;
  final String? fieldTitle;
  final Color? containerColor;
  final Color? borderColor;
  final Color? containerBorderColor;
  final bool password;
  final Widget? extraWidget;
  final TextEditingController? controller;
  final bool? readOnly;
  final bool? isPasswordField;
  final bool? filledColor;
  final bool? showSuffixIcon;
  final double? height;
  final Function(String)? onChange;
  final int? maxLine;
  final String? Function(String?)? validator;
  final Function()? suffixOnTap;
  final IconData? prefix;
  final bool? showPrefixIcon;

  const AppTextField({
    super.key,
    this.icon,
    this.hintText,
    this.fieldTitle,
    this.containerColor,
    this.prefixIcon,
    this.password = false,
    this.extraWidget,
    this.controller,
    this.readOnly,
    this.isPasswordField,
    this.filledColor,
    this.height,
    this.onChange,
    this.borderColor,
    this.containerBorderColor,
    this.maxLine,
    this.validator,
    this.suffixOnTap,
    this.showSuffixIcon,
    this.prefix,
    this.showPrefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPasswordField ?? false,
      controller: controller,
      maxLines: maxLine ?? 1,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFFDFDFD),
        suffixIcon: showSuffixIcon == true
            ? InkWell(
                onTap: suffixOnTap,
                child: Icon(Icons.arrow_forward_ios_rounded,
                    color: AppColors.light.primary5, size: 16),
              )
            : const SizedBox(),
        prefixIcon: showPrefixIcon == true
            ? Icon(prefix, color: AppColors.light.primary5, size: 20)
            : null,
        //fillColor: Colors.lightBlue,
        hintText: hintText,
        hintStyle: AppTheme.light.textTheme.bodySmall
            ?.copyWith(color: AppColors.light.primary5),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        // FOR LONG HEIGHT TEXTFIELD
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFF2F2F2), width: 0.85),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFF2F2F2), width: 0.85),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
