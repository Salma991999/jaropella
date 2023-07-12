import 'package:flutter/material.dart';

enum ScreenSize {
  tablet,
  mobile,
  desktop;

  // Todo :: return the device type
  static ScreenSize getDeviceType() {
    late ScreenSize type;
    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    if (data.size.shortestSide < 600) {
      type = ScreenSize.mobile;
    } else if (data.size.shortestSide > 600 && data.size.shortestSide < 1110) {
      type = ScreenSize.tablet;
    } else {
      type = ScreenSize.desktop;
    }
    return type;
  }

  static bool get isTablet => getDeviceType() == ScreenSize.tablet;

  // Todo ::breakpoint
  double get breakpoint {
    switch (this) {
      case ScreenSize.mobile:
        return 600;
      case ScreenSize.tablet:
        return 1110;
      case ScreenSize.desktop:
        return double.infinity;
    }
  }

  // Todo ::  ScreenSize of (BuildContext context)
  static ScreenSize of(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= ScreenSize.desktop.breakpoint) {
      return ScreenSize.desktop;
    } else if (screenWidth >= ScreenSize.tablet.breakpoint) {
      return ScreenSize.tablet;
    } else {
      return ScreenSize.mobile;
    }
  }

  // // Todo ::  gridCrossAxisCount (BuildContext context)
  // static int gridCrossAxisCount(BuildContext context) {
  //   double screenWidth = MediaQuery.of(context).size.width;
  //   if (screenWidth >= ScreenSize.desktop.breakpoint) {
  //     return 6;
  //   } else if (screenWidth >= ScreenSize.tablet.breakpoint) {
  //     return 4;
  //   } else {
  //     return 2;
  //   }
  // }
//
//   // Todo ::  get ScreenSize height
//   static double height(BuildContext context) =>
//       MediaQuery.of(context).size.height;
//
//   // Todo ::  get ScreenSize width
//   static double width(BuildContext context) =>
//       MediaQuery.of(context).size.width;
}
