
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home/controllers/home.controller.dart';

class AppDrawer extends GetView<HomeController> {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [

          ],
        ),
      ),
    );
  }
}

