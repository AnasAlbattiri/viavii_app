import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viavii_app/utils/colors.dart';
import 'package:viavii_app/view/screens/auth/settings_screen.dart';
import '../../logic/controller/main_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.currentIndex.value,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                  color: mainColor,
                ),
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.mode_of_travel,
                  color: mainColor,
                ),
                icon: Icon(
                  Icons.mode_of_travel,
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.settings,
                  color: mainColor,
                ),
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                label: '',
              ),
            ],
            onTap: (index) {
              controller.currentIndex.value = index;
            },
          ),
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: controller.screens,
          ),
          extendBody: true,
        ),
      );
    });
  }
}
