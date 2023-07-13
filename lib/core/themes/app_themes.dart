// import 'package:flutter/material.dart';
// import 'package:jaropella/core/themes/them_enums.dart';
// import '../database/features/global_app/theme.dart';
// import 'app_colors.dart';
//
//
// class AppThemes {
//   static ThemeMode themeMode() {
//     ThemeEnum themeEnum = DBTheme.getAppTheme();
//
//     if (themeEnum == ThemeEnum.dark) {
//       return ThemeMode.dark;
//     } else {
//       return ThemeMode.light;
//     }
//   }
//
//   static ThemeData light = ThemeData(
//     useMaterial3: true,
//     primaryColor: AppColors.primary,
//     primaryColorLight:AppColors.lightPrimary,
//     dividerColor:AppColors.medGrey ,
//     shadowColor: AppColors.darkShadow,
//     // appBarTheme: AppBarThemes.light,
//     // textTheme: TextThemeApp.lightTextTheme,
//     cardColor: AppColors.white,
//     backgroundColor: AppColors.white,
//     // cardTheme: CardThemes.light,
//     platform: TargetPlatform.iOS,
//     scaffoldBackgroundColor: AppColors.scaffold,
//     // elevatedButtonTheme: AppElevatedButtonThemes.light,
//     // floatingActionButtonTheme: AppFloatingButtonThemes.light,
//     // inputDecorationTheme: TextFieldThemes.light,
//     // tabBarTheme: TabBarThemes.light,
//     // iconTheme: AppIconTheme.light,
//     colorScheme: ColorScheme.fromSwatch(primarySwatch: _getSwatch(AppColors.primary)),
//   );
//
//   static ThemeData dark = ThemeData(
//     useMaterial3: true,
//     primaryColor: AppColors.lightSecondary,
//     primaryColorLight:AppColors.lightBlue,
//     dividerColor:AppColors.darkWight ,
//     shadowColor: AppColors.lightShadow,
//     // appBarTheme: AppBarThemes.dark,
//     // textTheme: TextThemeApp.darkTextTheme,
//     scaffoldBackgroundColor: AppColors.darkScaffold,
//     cardColor: AppColors.darkCard,
//     backgroundColor: AppColors.darkCardBackground,
//     // cardTheme: CardThemes.dark,
//     platform: TargetPlatform.iOS,
//     // elevatedButtonTheme: AppElevatedButtonThemes.dark,
//     // floatingActionButtonTheme: AppFloatingButtonThemes.dark,
//     // inputDecorationTheme: TextFieldThemes.dark,
//     // tabBarTheme: TabBarThemes.dark,
//     // iconTheme: AppIconTheme.dark,
//     colorScheme: ColorScheme.dark(primary:_getSwatch(AppColors.primary)),
//   );
//
//   static _getSwatch(Color primary) {
//     return MaterialColor(primary.value, {
//        50: primary,
//       100: primary,
//       200: primary,
//       300: primary,
//       400: primary,
//       500: primary,
//       600: primary,
//       700: primary,
//       800: primary,
//       900: primary,
//     });
//   }
// }
