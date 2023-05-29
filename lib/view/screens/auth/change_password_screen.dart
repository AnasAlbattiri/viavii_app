import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../logic/controller/auth_controller.dart';
import '../../../utils/colors.dart';
import '../../../utils/strings.dart';
import '../../widgets/auth/auth_text_form_field.dart';
import '../../widgets/else/text_utils.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Change Password',
            style: TextStyle(
              color: mainColor,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Your account security is important to us. Please take a moment to change your password to ensure your personal information is protected.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    'assets/images/forgot.png',
                    width: 330,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GetBuilder<AuthController>(
                    builder: (_) {
                      return AuthTextFormField(
                        controller: currentPasswordController,
                        obscureText: controller.isCurrentPasswordVisible ? false : true,
                        textType: TextInputType.text,
                        validator: (value) {
                          if (value.toString().length < 8) {
                            return 'Password must be 8 or more characters long';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 30,
                          color: mainColor,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.toggleCurrentPasswordVisibility();
                          },
                          icon: controller.isCurrentPasswordVisible
                              ? Icon(
                                  Icons.visibility_off,
                                  color: Colors.black45,
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: Colors.black45,
                                ),
                        ),
                        hintText: 'Current Password',
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GetBuilder<AuthController>(
                    builder: (_) {
                      return AuthTextFormField(
                        controller: newPasswordController,
                        obscureText: controller.isNewPasswordVisible ? false : true,
                        textType: TextInputType.text,
                        validator: (value) {
                          if (value.toString().length < 8) {
                            return 'Password must be 8 or more characters long';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 30,
                          color: mainColor,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.toggleNewPasswordVisibility();
                          },
                          icon: controller.isNewPasswordVisible
                              ? Icon(
                                  Icons.visibility_off,
                                  color: Colors.black45,
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: Colors.black45,
                                ),
                        ),
                        hintText: 'New Password',
                      );
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GetBuilder<AuthController>(builder: (_) {
                    return ElevatedButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            final prefs = await SharedPreferences.getInstance();
                            String? accessToken = prefs.getString('accessToken');
                            print('accessToken: $accessToken'); // Add this line
                            Map<String, dynamic> response = await controller.changePassword(
                              currentPasswordController.text,
                              newPasswordController.text,
                            );
                            print('response: $response'); // Add this line
                            if (response['status'] == true) {
                              // Show a success message
                              var successSnack = SnackBar(
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                content: AwesomeSnackbarContent(
                                  title: 'Well done!',
                                  message: 'Password changed successfully.',
                                  contentType: ContentType.success,
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(successSnack);
                              currentPasswordController.clear();
                              newPasswordController.clear();
                            } else {
                              var failSnack = SnackBar(
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                content: AwesomeSnackbarContent(
                                  title: 'Oh snap!',
                                  message: 'Sorry! There was a problem with your request.',
                                  contentType: ContentType.warning,
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(failSnack);
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(400, 50),
                          backgroundColor: mainColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: TextUtils(
                          text: 'SEND',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: '',
                        ));
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
