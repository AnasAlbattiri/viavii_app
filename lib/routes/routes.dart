import 'package:get/get.dart';
import 'package:viavii_app/view/screens/welcome_screen.dart';
import '../logic/bindings/auth_bindings.dart';
import '../view/screens/auth/change_password_screen.dart';
import '../view/screens/auth/login_screen.dart';
import '../view/screens/auth/register_screen.dart';
import '../view/screens/home/home_screen.dart';
import '../view/screens/resin_epoxy_art_details_screen.dart';
import '../view/screens/main_screen.dart';
import '../view/screens/splash/splash_screen.dart';


class AppRoutes {
  static const home = '/home';
  static const splash = '/splash';
  static const main = '/main';


  static final routes = [
    GetPage(
      name: '/register',
      page: () => RegisterScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: '/home',
      page: () => HomeScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: '/main',
      page: () => MainScreen(),
    ),
    GetPage(
      name: '/login',
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: '/register',
      page: () => RegisterScreen(),
      binding: AuthBinding(),
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
      name: '/resin_epoxy_art_details',
      page: () => ResinEpoxyArtDetailsScreen(),
    ),
  ];


}
