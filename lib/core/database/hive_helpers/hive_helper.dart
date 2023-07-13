// Dart imports:
// import 'dart:io';
//
// // Flutter imports:
// import 'package:flutter/cupertino.dart';
// // Package imports:
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:jaropella/core/database/hive_helpers/tables.dart';
// import 'package:path_provider/path_provider.dart';
//
// class HiveHelpers {
//   static Future<dynamic> initSystemHive() async {
//     Directory appDocDirectory = await getApplicationDocumentsDirectory();
//     String path = appDocDirectory.path;
//     await Hive.initFlutter(path);
//     Hive.init(path);
//     await openBoxes();
//   }
//
//   /// Clear Data Base
//   static Future clearHive() async {
//     await clearBox(HiveBoxTablesNames.GlobalBoxApp);
//     await clearBox(HiveBoxTablesNames.AuthBox);
//     await clearBox(HiveBoxTablesNames.CheckOpeningEntryBox);
//     await clearBox(HiveBoxTablesNames.ProfileDetailsBox);
//     await clearBox(HiveBoxTablesNames.ItemsGroupBox);
//     await clearBox(HiveBoxTablesNames.PaymentsBox);
//     await clearBox(HiveBoxTablesNames.InvoicesBox);
//     await clearBox(HiveBoxTablesNames.ItemsBox);
//     await clearBox(HiveBoxTablesNames.DevicesBox);
//   }
//
//   static Future<void> openBoxes() async {
//     await Hive.openBox(HiveBoxTablesNames.GlobalBoxApp);
//     await Hive.openBox(HiveBoxTablesNames.AuthBox);
//     await Hive.openBox(HiveBoxTablesNames.CheckOpeningEntryBox);
//     await Hive.openBox(HiveBoxTablesNames.ProfileDetailsBox);
//     await Hive.openBox(HiveBoxTablesNames.ItemsGroupBox);
//     await Hive.openBox(HiveBoxTablesNames.PaymentsBox);
//     await Hive.openBox(HiveBoxTablesNames.InvoicesBox);
//     await Hive.openBox(HiveBoxTablesNames.ItemsBox);
//     await Hive.openBox(HiveBoxTablesNames.DevicesBox);
//   }
//
//   static Future<void> clearBox(String boxName) async {
//     await Hive.box(boxName).clear();
//     debugPrint(" Clear Data Base Table ::  $boxName ::: ");
//   }
// }
