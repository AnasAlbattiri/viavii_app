import 'package:get/get.dart';
import 'package:viavii_app/view/screens/experience/experience_screen.dart';
import 'package:viavii_app/view/screens/main/welcome_screen.dart';
import '../view/screens/auth/change_password_screen.dart';
import '../view/screens/auth/login_screen.dart';
import '../view/screens/auth/register_screen.dart';
import '../view/screens/home/home_screen.dart';
import '../view/screens/experience/experience_details_screen.dart';
import '../view/screens/main/main_screen.dart';
import '../view/screens/splash/splash_screen.dart';


class AppRoutes {
  static const home = '/home';
  static const splash = '/splash';
  static const main = '/main';


  static final routes = [
    GetPage(
      name: '/register',
      page: () => RegisterScreen(),
    ),
    GetPage(
      name: '/home',
      page: () => HomeScreen(),
    ),
    GetPage(
      name: '/main',
      page: () => MainScreen(),
    ),
    GetPage(
      name: '/login',
      page: () => LoginScreen(),
    ),
    GetPage(
      name: '/register',
      page: () => RegisterScreen(),
    ),
    GetPage(
      name: '/splash',
      page: () => SplashScreen(),
    ),
    GetPage(
      name: '/welcome',
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: '/change_password',
      page: () => ChangePasswordScreen(),
    ),
    GetPage(
      name: '/experience',
      page: () => ExperienceScreen(),
    ),

  ];


}
