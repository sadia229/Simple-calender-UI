import 'package:get/get.dart';

import '../../../../presentation/routine/controllers/routine.controller.dart';

class RoutineControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoutineController>(
      () => RoutineController(),
    );
  }
}
