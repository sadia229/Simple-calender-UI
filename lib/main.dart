import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'infrastructure/navigation/bindings/domains/domain_di_container.dart';
import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';
import 'infrastructure/theme/app.theme.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  var initialRoute = await Routes.initialRoute;
  //WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await DomainLayerDependencyInjectionContainer.init();
  await initializeDateFormatting('bn', "");
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;

  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      getPages: Nav.routes,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('bn', 'BD'),
    );
  }
}
