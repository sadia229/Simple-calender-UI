import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/bottom_navbar.controller.dart';

class BottomShadowComponents extends GetView<BottomNavbarController> {
  const BottomShadowComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Row(
        children: [
          controller.currentIndex.value == 0?
            Image.asset(
              "assets/graphics/dark/icons/bottombar-shadow.png",
              width: 56,
            ):Container(),
          controller.currentIndex.value == 1?
            Image.asset(
              "assets/graphics/dark/icons/bottombar-shadow.png",
              width: 56,
            ):Container(),

          controller.currentIndex.value == 2?
            Image.asset(
              "assets/graphics/dark/icons/bottombar-shadow.png",
              width: 56,
            ):Container(),

          controller.currentIndex.value == 3?
            Image.asset(
              "assets/graphics/dark/icons/bottombar-shadow.png",
              width: 56,
            ):Container(),
        ],
      );
    });
  }
}
