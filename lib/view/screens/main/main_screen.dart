import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viavii_app/utils/colors.dart';
import 'package:viavii_app/view/screens/auth/settings_screen.dart';
import '../../../logic/controller/main_controller.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.put(MainController());
  final bottomBarIcons = <Widget>[
    Icon(
      Icons.home,
      color: Colors.black,
    ),
    Icon(
      Icons.mode_of_travel,
      color: Colors.black,
    ),
    Icon(
      Icons.settings,
      color: Colors.black,
    ),
    Icon(
      Icons.person,
      color: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SafeArea(
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: CurvedNavigationBar(
            height: 60,
            buttonBackgroundColor: mainColor,
            backgroundColor: Colors.black,
            color: Colors.white,
            items: bottomBarIcons,
            index: controller.currentIndex.value,
            onTap: (index) {
              controller.currentIndex.value = index;
            },
          ),
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: controller.screens,
          ),
        ),
      );
    });
  }
}
// BottomNavigationBar(
// type: BottomNavigationBarType.fixed,
// currentIndex: controller.currentIndex.value,
// backgroundColor: Colors.white,
// items: [
// BottomNavigationBarItem(
// activeIcon: Icon(
// Icons.home,
// color: mainColor,
// ),
// icon: Icon(
// Icons.home,
// color: Colors.black,
// ),
// label: '',
// ),
// BottomNavigationBarItem(
// activeIcon: Icon(
// Icons.mode_of_travel,
// color: mainColor,
// ),
// icon: Icon(
// Icons.mode_of_travel,
// color: Colors.black,
// ),
// label: '',
// ),
// BottomNavigationBarItem(
// activeIcon: Icon(
// Icons.add,
// color: mainColor,
// ),
// icon: Icon(
// Icons.add,
// color: Colors.black,
// ),
// label: '',
// ),
// BottomNavigationBarItem(
// activeIcon: Icon(
// Icons.settings,
// color: mainColor,
// ),
// icon: Icon(
// Icons.settings,
// color: Colors.black,
// ),
// label: '',
// ),
// BottomNavigationBarItem(
// activeIcon: Icon(
// Icons.person,
// color: mainColor,
// ),
// icon: Icon(
// Icons.person,
// color: Colors.black,
// ),
// label: '',
// ),
// ],
// onTap: (index) {
// controller.currentIndex.value = index;
// },
// ),
