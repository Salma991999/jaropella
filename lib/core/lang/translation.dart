import 'package:get/get.dart';
import '../enums/langs_enums.dart';
import 'ar.dart';
import 'en.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    LangEnums.en.name: en,
    LangEnums.ar.name: ar,
  };
}