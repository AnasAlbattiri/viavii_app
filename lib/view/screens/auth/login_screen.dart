import 'dart:convert';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../logic/controller/auth_controller.dart';
import '../../../utils/colors.dart';
import '../../../utils/strings.dart';
import '../../widgets/auth/auth_text_form_field.dart';
import '../../widgets/auth/bottom_container.dart';
import '../../widgets/else/text_utils.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  // Vars & Else
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final controller = Get.find<AuthController>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          elevation: 0.0,
          toolbarHeight: 60,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.3,
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Align(
                        child: Image(
                          image: AssetImage('assets/images/viavii.png'),
                          height: 70,
                        ),
                        alignment: Alignment.topLeft,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          TextUtils(
                            text: 'Login with ',
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: 'Circular',
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          TextUtils(
                            text: 'ViaVii',
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: mainColor,
                            fontFamily: 'Circular',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      AuthTextFormField(
                        controller: emailController,
                        obscureText: false,
                        textType: TextInputType.emailAddress,
                        validator: (value) {
                          if (!RegExp(validationEmail).hasMatch(value)) {
                            return 'Invalid Email';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: Icon(
                          Icons.email,
                          color: mainColor,
                        ),
                        suffixIcon: Text(''),
                        hintText: 'Email',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Password Field
                      GetBuilder<AuthController>(
                        builder: (_) {
                          return AuthTextFormField(
                            controller: passwordController,
                            obscureText: controller.isVisibility ? false : true,
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
                                controller.visibility();
                              },
                              icon: controller.isVisibility
                                  ? Icon(
                                      Icons.visibility_off,
                                      color: Colors.black45,
                                    )
                                  : Icon(
                                      Icons.visibility,
                                      color: Colors.black45,
                                    ),
                            ),
                            hintText: 'Password',
                          );
                        },
                      ),
                      // Align(
                      //   alignment: Alignment.centerRight,
                      //   child: TextButton(
                      //     onPressed: () {
                      //       Get.toNamed('/forget_password');
                      //     },
                      //     child: TextUtils(
                      //       text: 'Forget Password?',
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.normal,
                      //       color: Get.isDarkMode ? Colors.white : Colors.black,
                      //       fontFamily: '',
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 50,
                      ),
                      // Email Field
                      GetBuilder<AuthController>(
                        builder: (_) {
                          return ElevatedButton(
                            onPressed: () async {
                              final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                              sharedPreferences.setString('email', emailController.text);
                              if (formKey.currentState!.validate()) {
                                // Call the login method and pass in the email and password from the form
                                final response = await controller.login(
                                  emailController.text,
                                  passwordController.text,
                                  context,
                                );
                                // Check if the login was successful
                                if (response['status'] != 0) {
                                  // Navigate to the home screen
                                  var successSnack = SnackBar(
                                    elevation: 0,
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.transparent,
                                    content: AwesomeSnackbarContent(
                                      title: 'Well done!',
                                      message: 'You has been successfully logged in.',
                                      contentType: ContentType.success,
                                    ),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(successSnack);
                                  Get.offNamed('/main');
                                } else {
                                  var failSnack = SnackBar(
                                    elevation: 0,
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.transparent,
                                    content: AwesomeSnackbarContent(
                                      title: 'Oh snap!',
                                      message: 'Sorry! There was a problem with your request.',
                                      contentType: ContentType.failure,
                                    ),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(failSnack);
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(360, 50),
                              backgroundColor: mainColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: TextUtils(
                              text: 'LOG IN',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: '',
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GetBuilder<AuthController>(builder: (_) {
                            return InkWell(
                              onTap: () {
                                controller.googleSignUp();
                              },
                              child: Image.asset(
                                'assets/images/google.png',
                                height: 30,
                              ),
                            );
                          }),
                          SizedBox(
                            width: 35,
                          ),
                          InkWell(
                            onTap: () {
                              controller.facebookSignUp();
                            },
                            child: Image.asset(
                              'assets/images/facebook.png',
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                BottomContainer(
                  text: 'Don\'t have an Account?',
                  onPressed: () {
                    Get.offNamed('/register');
                  },
                  textType: 'Sign up',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
