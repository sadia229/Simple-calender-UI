import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../home/home.screen.dart';
import '../../routine/routine.screen.dart';
import '../../settings/settings.screen.dart';
import '../../timeline/timeline.screen.dart';

class BottomNavbarController extends GetxController {
  var currentIndex = 0.obs;
  var selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    changeTabPage(currentIndex.value);
  }

  void changeTabPage(int index) {
    if (currentIndex.value != index) {
      currentIndex.value = index;
      selectedIndex.value = index;
      debugPrint("currentIndex.value ${currentIndex.value}");
      update();
    }
  }

  List<Widget> pages = [
    HomeScreen(),
    RoutineScreen(),
    const TimelineScreen(),
    const SettingsScreen(),
  ];
}
