import 'package:flutter/material.dart';
import 'package:flutter_til_web/utils/constants/sizes.dart';

class TDeviceUtils {
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static bool isDesktopScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= TSizes.desktopScreenSize;
  }

  static bool isTabletScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= TSizes.tabletScreenSize &&
        MediaQuery.of(context).size.width < TSizes.desktopScreenSize;
  }

  static bool isMobileScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < TSizes.tabletScreenSize;
  }
}
