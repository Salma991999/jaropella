import 'package:get/get.dart';
import '../cache/preference_manager.dart';
import '../enums/langs_enums.dart';
import 'package:flutter/material.dart';

class ChangeLangApp {
  static change({LangEnums? langEnums}) {
    if (langEnums != null) {
      Get.updateLocale(Locale(langEnums.name));
      PreferenceManager().saveLanguage(langEnums);
    } else {
      LangEnums lanCode = PreferenceManager().currentLang();

      Get.updateLocale(lanCode == LangEnums.en ? Locale(LangEnums.ar.name) : Locale(LangEnums.en.name));
      PreferenceManager().saveLanguage(lanCode == LangEnums.en ? LangEnums.ar : LangEnums.en);

    }
  }

  static Locale getCurrentLang() {
    final res = PreferenceManager().currentLang();
    if (res == LangEnums.ar) {
      return const Locale('ar');
    } else {
      return const Locale('en');
    }
  }
}
