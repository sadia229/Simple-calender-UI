import 'arguments/route_arguments.dart';
import 'package:get/get.dart';

import 'navigation/routes.dart';

abstract class PreparedRoutes {
  static final go = _Routes();
  static final arguments = _Arguments();
}

class _Routes {
  // Future<dynamic>? location() {
  //   return Get.toNamed(Routes.LOCATION);
  // }

// Future<dynamic>? emiCalculator(EmiCalculatorArguments arguments) {
//   return Get.toNamed(Routes.EMICALCULATOR, arguments: arguments);
// }
}

class _Arguments {
  // EmiCalculatorArguments get emiCalculator {
  //   return Get.arguments;
  // }
}
