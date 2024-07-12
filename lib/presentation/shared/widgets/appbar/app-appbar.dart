import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../infrastructure/theme/app.theme.dart';
import '../../../../infrastructure/theme/assets/app.assets.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Function()? onClicked;
  final String? text;
  final bool? showCenterText;
  final bool? showBackButton;

  const CustomAppbar({
    super.key,
    this.onClicked,
    this.text,
    this.showCenterText = false,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      surfaceTintColor: Colors.white,
      leadingWidth: 0.0,
      titleSpacing: 0,
      elevation: 0,
      centerTitle:
          showCenterText == true || showBackButton == true ? true : false,
      title: Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8.0, top: 12, bottom: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (showBackButton == true)
              InkWell(
                onTap: () => Get.back(),
                borderRadius: BorderRadius.circular(50),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(Icons.arrow_back, color: Colors.black, size: 24),
                ),
              ),
            if (showCenterText == true)
              InkWell(
                onTap: onClicked,
                borderRadius: BorderRadius.circular(50),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child:
                      Icon(CupertinoIcons.bars, color: Colors.black, size: 24),
                ),
              ),
            if (showCenterText == true || showBackButton == true)
              Text(
                text ?? "",
                style: AppTheme.light.textTheme.bodyLarge?.copyWith(
                  color: Colors.black,
                ),
              ),
            if (showCenterText == false)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: onClicked,
                    borderRadius: BorderRadius.circular(50),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Icon(CupertinoIcons.bars,
                          color: Colors.black, size: 24),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Image.asset(AppAssets.light.icons.appbarIcon, height: 37),
                  const SizedBox(width: 8),
                  Text(
                    'Flutter Task',
                    style: AppTheme.light.textTheme.bodyLarge?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(50),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  AppAssets.light.icons.notificationIcon,
                  height: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
