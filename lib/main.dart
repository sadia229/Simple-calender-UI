import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'infrastructure/navigation/bindings/domains/domain_di_container.dart';
import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';
import 'infrastructure/theme/app.theme.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await DomainLayerDependencyInjectionContainer.init();
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
      // theme: AppTheme.light,
      // darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      fallbackLocale: const Locale('en', 'US'),
    );
    // return ScreenUtilInit(
    //   designSize: const Size(360, 800),
    //   minTextAdapt: true,
    //   builder: (context, child) {
    //     return GetMaterialApp(
    //       debugShowCheckedModeBanner: false,
    //       initialRoute: initialRoute,
    //       getPages: Nav.routes,
    //       theme: AppTheme.light,
    //       darkTheme: AppTheme.dark,
    //       themeMode: ThemeMode.light,
    //       // themeMode: Get.find<SettingsRepository>()
    //       //             .getSettings(SettingName.theme) ==
    //       //         null
    //       //     ? ThemeMode.system
    //       //     : Get.find<SettingsRepository>().getSettings(SettingName.theme) ==
    //       //             "dark"
    //       //         ? ThemeMode.dark
    //       //         : ThemeMode.light,
    //       //translations: AppTranslations(),
    //       locale:
    //       Get.find<SettingsRepository>().getSettings(SettingName.locale) ==
    //           null
    //           ? Get.deviceLocale
    //           : Locale(Get.find<SettingsRepository>()
    //           .getSettings(SettingName.locale)!),
    //       fallbackLocale: const Locale('en', 'US'),
    //     );
    //   },
    // );
  }
}
