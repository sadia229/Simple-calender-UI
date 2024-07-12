
import 'package:get/get.dart';

import '../../../../presentation/home/controllers/home.controller.dart';
import '../../../../presentation/network/controllers/network.controller.dart';
import '../../../../presentation/routine/controllers/routine.controller.dart';
import '../../../../presentation/settings/controllers/settings.controller.dart';
import '../../../../presentation/timeline/controllers/timeline.controller.dart';

class DomainLayerDependencyInjectionContainer {
  static Future<void> init() async {
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<SettingsController>(() => SettingsController(), fenix: true);
    Get.lazyPut<RoutineController>(() => RoutineController(), fenix: true);
    Get.lazyPut<TimelineController>(() => TimelineController(), fenix: true);
    Get.lazyPut<NetworkController>(() => NetworkController(), fenix: true);
  }
}
