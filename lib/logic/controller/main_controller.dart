import 'package:get/get.dart';
import 'package:viavii_app/view/screens/auth/profile_screen.dart';
import 'package:viavii_app/view/screens/experience/experience_screen.dart';
import '../../view/screens/home/home_screen.dart';
import '../../view/screens/auth/settings_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  final screens = [
    HomeScreen(),
    ExperienceScreen(),
    SettingsScreen(),
    ProfileScreen(),
  ].obs;


}