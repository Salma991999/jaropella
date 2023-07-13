// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hive/hive.dart';
// import '../../../enums/langs_enums.dart';
// import '../../hive_helpers/keys.dart';
// import '../../hive_helpers/tables.dart';
//
// class DBLang {
//   static Locale getLocalLang() {
//
//     var box = Hive.box(HiveBoxTablesNames.GlobalBoxApp);
//     String? val = box.get(HiveKeysNames.currentLangKey);
//     return Locale(LangEnums.en.name);
//
//     if (val == null) {
//       Locale? deviceLocal = Get.deviceLocale;
//       if (deviceLocal != null) {
//         return deviceLocal;
//       } else {
//         return Locale(LangEnums.ar.name);
//       }
//     } else {
//       return Locale(val);
//     }
//   }
//   static bool get isEn => getCodeLang() == LangEnums.en;
//
//   static LangEnums getCodeLang() {
//     var box = Hive.box(HiveBoxTablesNames.GlobalBoxApp);
//     String? val = box.get(HiveKeysNames.currentLangKey);
//
//     if (val == null) {
//       Locale? deviceLocal = Get.deviceLocale;
//       if (deviceLocal != null) {
//         return deviceLocal.languageCode == LangEnums.en.name ? LangEnums.en : LangEnums.ar;
//       } else {
//         return LangEnums.en;
//       }
//     } else {
//       return val == LangEnums.en.name ? LangEnums.en : LangEnums.ar;
//     }
//   }
//
//   static Future setLocal(LangEnums langEnums) async {
//     var box = Hive.box(HiveBoxTablesNames.GlobalBoxApp);
//     await box.put(HiveKeysNames.currentLangKey, langEnums.name.toString());
//   }
// }
