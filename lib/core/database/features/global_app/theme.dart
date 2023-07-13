
// import 'package:hive/hive.dart';
// import '../../../lang/app_strings.dart';
// import '../../../themes/them_enums.dart';
// import '../../hive_helpers/keys.dart';
// import '../../hive_helpers/tables.dart';
//
// class DBTheme {
//   /// ======  save Theme App =======
//   static Future setTheme(ThemeEnum themeEnum) async {
//     print("## setTheme ## ");
//     var box = Hive.box(HiveBoxTablesNames.GlobalBoxApp);
//     await box.put(HiveKeysNames.currentThemeKey, themeEnum.name.toString());
//     print("====== SEt THEME -=-   ${box.get(HiveKeysNames.currentThemeKey)}");
//   }
//
//   static bool get isDarkMode => getAppTheme() == ThemeEnum.dark;
//   static String get themeMode =>
//       isDarkMode ? "dark" : "light";
//
//   /// =====  Get Theme App ======
//   static ThemeEnum getAppTheme() {
//     // print("## getAppTheme ## ");
//     // return ThemeEnum.dark;
//
//     var box = Hive.box(HiveBoxTablesNames.GlobalBoxApp);
//     String? val = box.get(HiveKeysNames.currentThemeKey);
//     // print("--=== getAppTheme -=-=-= "+val.toString());
//     if (val == null || val == ThemeEnum.light.name) {
//       return ThemeEnum.light;
//     } else {
//       return ThemeEnum.dark;
//     }
//   }
// }
