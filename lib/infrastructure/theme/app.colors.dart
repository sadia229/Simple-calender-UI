import 'dart:ui';

abstract class AppColors {
  static final light = _LightColors();
  static final dark = _DarkColors();
}

class _LightColors {
  //primary
  final Color primary = const Color(0xFF86B560);
  final Color primary2 = const Color(0xFF336F4A);
  final Color primary3 = const Color(0xFFE7E7E7);
  final Color primary4 = const Color(0xFFF6F6F6);
  final Color primary5 = const Color(0xFF6A6A6A);
  final primary6 = const Color(0xFFe6eef5);

  //secondary
  final Color secondary = const Color(0xffFF737A);
  final Color secondary2 = const Color(0xff2A61EE);
  final Color secondary3 = const Color(0xff6b400d);
  final Color secondary4 = const Color(0xffffba69);
  final Color secondary5 = const Color(0xffffdfba);
  final Color secondary6 = const Color(0xfffff5e9);

  //ternary

  final Color ternary = const Color(0xFFF5F5F5);
  final Color ternary2 = const Color(0xFF5f5f63);
  final Color ternary3 = const Color(0xFF38383a);
  final Color ternary4 = const Color(0xFFaeaeb1);
  final Color ternary5 = const Color(0xFFd9d9db);
  final ternary6 = const Color(0xFFf3f3f3);
  final Color fonts = const Color(0xFF202020);
  final Color background = const Color(0xFF1C5198);
  final Color connectedColor = const Color(0xFF20CD7F);
  final Color extraBlack = const Color(0xFF1D1D1F);


  //extra
  final Color circle = const Color(0xFFD0D5DD);
  final Color disabledButton = const Color(0xFF93B4D0);
  final Color disabledButtonShade = const Color(0xFF93AABE);
}

class _DarkColors {
  //primary
  final Color primary = const Color(0xFF005298);
  final Color primary2 = const Color(0xFF003a6c);
  final Color primary3 = const Color(0xFF002240);
  final Color primary4 = const Color(0xFF548bba);
  final Color primary5 = const Color(0xFFb0c9df);
  final primary6 = const Color(0xFFe6eef5);

  //secondary
  final Color secondary = const Color(0xffff981f);
  final Color secondary2 = const Color(0xffb56c16);
  final Color secondary3 = const Color(0xff6b400d);
  final Color secondary4 = const Color(0xffffba69);
  final Color secondary5 = const Color(0xffffdfba);
  final Color secondary6 = const Color(0xfffff5e9);

  //ternary

  final Color ternary = const Color(0xFF86868b);
  final Color ternary2 = const Color(0xFF5f5f63);
  final Color ternary3 = const Color(0xFF38383a);
  final Color ternary4 = const Color(0xFFaeaeb1);
  final Color ternary5 = const Color(0xFFd9d9db);
  final ternary6 = const Color(0xFFf3f3f3);
  final Color fonts = const Color(0xFF212121);


}
