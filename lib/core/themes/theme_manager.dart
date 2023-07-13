// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:jaropella/core/themes/them_enums.dart';
//
// import '../database/features/global_app/theme.dart';
//
//
// class ThemeManager  {
//
//   change({ThemeEnum? themeEnum}) {
//     if (themeEnum != null) {
//       print("themeEnum != null");
//       Get.changeThemeMode(themeEnum.name == ThemeEnum.dark.name
//           ? ThemeMode.light
//           : ThemeMode.dark);
//       DBTheme.setTheme(themeEnum.name == ThemeEnum.dark.name
//           ? ThemeEnum.light
//           : ThemeEnum.dark);
//     } else {
//       print("ChangeThemeProvider themeEnum == null");
//       Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
//       DBTheme.setTheme(Get.isDarkMode ? ThemeEnum.dark : ThemeEnum.light);
//     }
//   }
// }
