import 'package:get/get.dart';

abstract class _CommonAssets {
  static const String _assetsPath = 'assets/graphics/common';
  static const _LogoAssets logo = _LogoAssets();
}

class _LightIcons {
  static const String _iconsPath = 'assets/graphics/light/icons';
  final String appbarIcon = '$_iconsPath/appbarIcon.png';
  final String bottombarHomeIcon = '$_iconsPath/bottombar-homeIcon.png';
  final String calenderIcon = '$_iconsPath/Calendar.png';
  final String codeIcon = '$_iconsPath/codeIcon.png';
  final String disableIcon = '$_iconsPath/disableIcon.png';
  final String fileIcon = '$_iconsPath/fileIcon.png';
  final String greenHomeIcon= '$_iconsPath/green-homeIcon.png';
  final String greewProfileIcon= '$_iconsPath/greew-profileIcon.png';
  final String homeIcon = '$_iconsPath/homeIcon.png';
  final String mapIcon = '$_iconsPath/mapIcon.png';
  final String notificationIcon = '$_iconsPath/notificationIcon.png';
  final String profile = '$_iconsPath/profile.png';
  final String profileIcon = '$_iconsPath/profileIcon.png';
  final String successfulIcon = '$_iconsPath/successful.png';
  final String timelineIcon = '$_iconsPath/timelineIcon.png';
  final String noNetworkIcon = '$_iconsPath/no-network.png';
  final String cameraIcon = '$_iconsPath/cameraIcon.png';
  final String bankIcon = '$_iconsPath/bankIcon.png';

}

class _DarkIcons {
  static const String _iconsPath = 'assets/graphics/dark/icons';
  final String appbarIcon = '$_iconsPath/appbarIcon.png';
  final String bottombarHomeIcon = '$_iconsPath/bottombar-homeIcon.png';
  final String calenderIcon = '$_iconsPath/Calendar.png';
  final String codeIcon = '$_iconsPath/codeIcon.png';
  final String disableIcon = '$_iconsPath/disableIcon.png';
  final String fileIcon = '$_iconsPath/fileIcon.png';
  final String greenHomeIcon= '$_iconsPath/green-homeIcon.png';
  final String greewProfileIcon= '$_iconsPath/greew-profileIcon.png';
  final String homeIcon = '$_iconsPath/homeIcon.png';
  final String mapIcon = '$_iconsPath/mapIcon.png';
  final String notificationIcon = '$_iconsPath/notificationIcon.png';
  final String profile = '$_iconsPath/profile.png';
  final String profileIcon = '$_iconsPath/profileIcon.png';
  final String successfulIcon = '$_iconsPath/successful.png';
  final String timelineIcon = '$_iconsPath/timelineIcon.png';
  final String noNetworkIcon = '$_iconsPath/no-network.png';
  final String cameraIcon = '$_iconsPath/cameraIcon.png';
  final String bankIcon = '$_iconsPath/bankIcon.png';

}

class _LightAssets extends _CommonAssets {
  static const String _assetsPath = 'assets/graphics/light';
  final icons = _LightIcons();
}

class _DarkAssets extends _CommonAssets {
  static const String _assetsPath = 'assets/graphics/dark';
  final icons = _DarkIcons();
}

class _LogoAssets {
  //const constructor
  const _LogoAssets();
}

abstract class AppAssets {
  static final light = _LightAssets();
  static final dark = _DarkAssets();

}
