import 'package:get/get.dart';
import 'package:task1/view/about_us.dart';
import 'package:task1/view/home_screen.dart';
import 'package:task1/view/location.dart';
import 'package:task1/view/login_screen.dart';
import 'package:task1/view/profile_page.dart';
import 'package:task1/view/signup_screen.dart';
import 'app_routes.dart'; // make sure you have AppRoutes.login defined

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.login, page: () => LoginScreen()),
    GetPage(name: AppRoutes.signup, page: () => SignUpScreen()),
    GetPage(name: AppRoutes.homescreen, page: () => HomeScreen()),
    GetPage(name: AppRoutes.profilescreen, page: () => ProfileScreen()),
    GetPage(name: AppRoutes.aboutscreen, page: () => AboutUs()),
    GetPage(name: AppRoutes.locationscreen, page: () => Location()),
  ];
}
