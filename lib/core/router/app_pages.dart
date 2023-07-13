// ignore_for_file: non_constant_identifier_names

import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../features/login/controller/login_binding.dart';
import '../../features/login/presentation/mobile/screens/login_mobile_screen.dart';
import '../cache/preference_manager.dart';

part 'app_routes.dart';

class AppPages {
  static String get INITIAL {
    // if (PreferenceManager().isLoggedIn()) {
      /// TODO : Replace with Home
    //   return Routes.LOGIN;
    // } else {
      return Routes.LOGIN;
    // }
  }

  static final routes = [
    GetPage(name: Routes.LOGIN, page: () => const LoginMobileScreen(),
        binding: LoginBinding()),
  ];
}
