// ignore_for_file: non_constant_identifier_names

import 'package:get/get_navigation/src/routes/get_route.dart';
import '../cache/preference_manager.dart';

part 'app_routes.dart';

class AppPages {
  static String get INITIAL {
    if (PreferenceManager().isLoggedIn()) {
      /// TODO : Replace with Home
      return Routes.PROFILE;
    } else {
      return Routes.PROFILE;
    }
  }

  static final routes = [
    // GetPage(name: Routes.LOGIN, page: () => LoginScreen(),
    //     binding: LoginBinding()),
    // GetPage(name: Routes.PROFILE, page: () => const ProfileScreen(),
    //     binding: ProfileBinding()),
  ];
}
