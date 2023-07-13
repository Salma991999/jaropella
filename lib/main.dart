import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
// import 'binding.dart';
// import 'core/data_base/hive_helpers/hive_helper.dart';
import 'core/lang/change_lang_controller.dart';
import 'core/lang/translation.dart';
import 'core/router/app_pages.dart';
import 'core/themes/app_themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await initialApp();

  runApp(const MyApp());
}
// initialApp() async {
//   Binding().dependencies();
//   await GetStorage.init();
//   await HiveHelpers.initSystemHive();
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'jaropilla',
      debugShowCheckedModeBanner: false,
      // theme: AppThemes.light,
      // darkTheme: AppThemes.dark,
      // themeMode: AppThemes.themeMode(),
      translations: MyTranslations(),
      locale: ChangeLangApp.getCurrentLang(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,

      // initialBinding: Binding(),
    );
  }
}
