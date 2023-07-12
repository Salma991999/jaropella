
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Responsive {
  static final double _heightScreen = Get.height;
  static final double _widthScreen = Get.width;

  double get heightScreen => _heightScreen;
  double get widthScreen => _widthScreen;
}
