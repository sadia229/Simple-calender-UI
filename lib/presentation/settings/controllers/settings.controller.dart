import 'package:get/get.dart';

class SettingsController extends GetxController {
  //TODO: Implement SettingsController

  final count = 0.obs;
  final rotateCommunity = true.obs;
  final rotationDegree = 1.5708.obs;
  final isSwitched = false.obs;
  final showExpansion = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  void rotateCommunityIcon() {
    print("hitrotateCommunityIcon");
    rotateCommunity.value = !rotateCommunity.value;
    rotationDegree.value = rotateCommunity.value ? -1.5708: 0;
  }

  void toggleIsSwitched(bool value) {
    isSwitched.value = value;
  }

  void showExpansionTile(){
    showExpansion.value = !showExpansion.value;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
