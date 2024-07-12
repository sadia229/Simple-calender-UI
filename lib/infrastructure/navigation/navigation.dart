import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config.dart';
import '../../presentation/add_new_category/add_new_category.screen.dart';
import '../../presentation/bottom_navbar/bottom_navbar.screen.dart';
import '../../presentation/home/home.screen.dart';
import '../../presentation/network/network.screen.dart';
import '../../presentation/routine/routine.screen.dart';
import '../../presentation/screens.dart';
import '../../presentation/settings/settings.screen.dart';
import '../../presentation/timeline/timeline.screen.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;

  EnvironmentsBadge({required this.child});

  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.NETWORK,
      page: () => const NetworkScreen(),
      binding: NetworkControllerBinding(),
    ),
    GetPage(
      name: Routes.SETTINGS,
      page: () => const SettingsScreen(),
      binding: SettingsControllerBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: Routes.ROUTINE,
      page: () => RoutineScreen(),
      binding: RoutineControllerBinding(),
    ),
    GetPage(
      name: Routes.TIMELINE,
      page: () => const TimelineScreen(),
      binding: TimelineControllerBinding(),
    ),
    GetPage(
      name: Routes.BOTTOM_NAVBAR,
      page: () => BottomNavbarScreen(),
      binding: BottomNavbarControllerBinding(),
    ),
    GetPage(
      name: Routes.ADD_NEW_CATEGORY,
      page: () => const AddNewCategoryScreen(),
      binding: AddNewCategoryControllerBinding(),
    ),
  ];
}
