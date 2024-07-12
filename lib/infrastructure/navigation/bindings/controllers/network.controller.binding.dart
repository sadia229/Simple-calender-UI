import 'package:get/get.dart';

import '../../../../presentation/network/controllers/network.controller.dart';

class NetworkControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NetworkController>(
      () => NetworkController(),
    );
  }
}
