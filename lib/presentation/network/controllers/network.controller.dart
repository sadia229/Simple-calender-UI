import 'package:get/get.dart';
import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkController extends GetxController {
  var connectionType = "".obs;
  final RxBool _check = false.obs;
  final Connectivity _connectivity = Connectivity();

  bool get check => _check.value;
  late StreamSubscription streamSubscription;

  @override
  void onInit() {
    super.onInit();
    getConnectionStatus();
    streamSubscription =
        _connectivity.onConnectivityChanged.listen(getConnectionType);
  }

  Future<void> getConnectionStatus() async {
    var connectivityResult;
    try {
      connectivityResult = await (_connectivity.checkConnectivity());
      getConnectionType(connectivityResult);
    } catch (e) {
      Get.snackbar("exception", 'error in connection');
    }
  }

  void getConnectionType(connectivityResult) {
    switch (connectivityResult) {
      case ConnectivityResult.mobile:
        connectionType.value = "mobile";
        break;
      case ConnectivityResult.wifi:
        connectionType.value = "wifi";
        break;
      case ConnectivityResult.none:
        connectionType.value = "none";
        break;
    }
  }
}
