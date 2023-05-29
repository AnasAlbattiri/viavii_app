import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:viavii_app/data/model/auth/login_model.dart';
import 'package:viavii_app/view/screens/auth/edit_profile_screen.dart';
import 'package:viavii_app/view/screens/auth/profile_screen.dart';
import 'package:viavii_app/view/screens/auth/user_info_screen.dart';

import '../../../data/model/auth/user_info_model.dart';
import '../../../logic/controller/auth_controller.dart';
import '../../../utils/colors.dart';
import '../../widgets/else/text_utils.dart';
import 'change_password_screen.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  final controller = Get.put(AuthController());
  LoginModel? loginModel;
  UserInfoModel? userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                  Get.to(() => ProfileScreen());
              },
              child: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: mainColor,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => UserInfoScreen());
              },
              child: Text(
                'Get user information',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: mainColor,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => EditProfileScreen());
              },
              child: Text(
                'Edit profile',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: mainColor,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/change_password');
              },
              child: Text(
                'Change Password',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: mainColor,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'Logout From App',
                  titleStyle: TextStyle(
                    fontSize: 18,
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                  middleText: 'Are you sure you need to logout?',
                  middleTextStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  radius: 12,
                  textCancel: 'No',
                  cancelTextColor: Get.isDarkMode ? Colors.white : Colors.black,
                  textConfirm: 'Yes',
                  confirmTextColor:
                      Get.isDarkMode ? Colors.white : Colors.black,
                  onCancel: () {
                    Get.back();
                  },
                  onConfirm: () async {
                    // Call the logout method
                    Map<String, dynamic> response = await controller.logout();

                    if (response['status'] != 0) {
                      // The user is logged out, you can clear the access token
                      print('Suceess');
                      controller.setAccessToken('');
                      final SharedPreferences sharedPreferences =
                          await SharedPreferences.getInstance();
                      sharedPreferences.remove('email');
                      Get.offAllNamed('/welcome');
                    } else {
                      // There was an error logging out
                      print(response['message']);
                    }
                  },
                  buttonColor: mainColor,
                );
              },
              child: Text(
                'SignOut',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
