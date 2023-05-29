// ignore_for_file: prefer_const_constructors
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../logic/controller/auth_controller.dart';
import '../../../utils/colors.dart';
import '../../../utils/strings.dart';
import '../../widgets/auth/auth_text_form_field.dart';
import '../../widgets/auth/bottom_container.dart';
import '../../widgets/auth/check_widget.dart';
import '../../widgets/else/text_utils.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  // Vars & Else
  final formKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final controller = Get.put(AuthController());

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
                SingleChildScrollView(
                  child: Container(
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
                          height: 30,
                        ),
                        Row(
                          children: [
                            TextUtils(
                              text: 'Register with ',
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color:
                                  Get.isDarkMode ? Colors.white : Colors.black,
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
                          controller: firstNameController,
                          obscureText: false,
                          textType: TextInputType.text,
                          validator: (value) {
                            if (value.toString().length <= 2 ||
                                !RegExp(validationName).hasMatch(value)) {
                              return 'Invalid Name';
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: Icon(
                            Icons.person,
                            color: mainColor,
                          ),
                          suffixIcon: Text(''),
                          hintText: 'First Name',
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        AuthTextFormField(
                          controller: lastNameController,
                          obscureText: false,
                          textType: TextInputType.text,
                          validator: (value) {
                            if (value.toString().length <= 2 ||
                                !RegExp(validationName).hasMatch(value)) {
                              return 'Invalid Name';
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: Icon(
                            Icons.person,
                            color: mainColor,
                          ),
                          suffixIcon: Text(''),
                          hintText: 'Last Name',
                        ),
                        SizedBox(
                          height: 18,
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
                          height: 18,
                        ),
                        GetBuilder<AuthController>(
                          builder: (_) {
                            return AuthTextFormField(
                              controller: passwordController,
                              obscureText:
                                  controller.isVisibility ? false : true,
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
                        SizedBox(
                          height: 15,
                        ),
                        CheckWidget(),
                        SizedBox(
                          height: 15,
                        ),
                        GetBuilder<AuthController>(builder: (_) {
                          return ElevatedButton(
                              onPressed: () async {
                                final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                                sharedPreferences.setString('email', emailController.text);
                                if (formKey.currentState!.validate() &&
                                    controller.isCheckBox == true) {
                                 final response =
                                      await controller.register(
                                    firstNameController.text,
                                    lastNameController.text,
                                    emailController.text,
                                    passwordController.text,
                                    1,
                                    context,
                                  );
                                  if (response['status'] == true) {
                                    var successSnack = SnackBar(
                                      elevation: 0,
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.transparent,
                                      content: AwesomeSnackbarContent(
                                        title: 'Congratulations',
                                        message: 'You have successfully registered, Now login please.',
                                        contentType: ContentType.success,
                                      ),
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(successSnack);
                                    Get.offAllNamed('/login');
                                  } else if (response['status'] == 0) {
                                    var failSnack = SnackBar(
                                      elevation: 0,
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.transparent,
                                      content: AwesomeSnackbarContent(
                                        title: 'Oh snap!',
                                        message: 'The Email Address is already in use! Please try with a different one.',
                                        contentType: ContentType.failure,
                                      ),
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(failSnack);
                                  } else {
                                    var failSnack2 = SnackBar(
                                      elevation: 0,
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.transparent,
                                      content: AwesomeSnackbarContent(
                                        title: 'Oh snap!',
                                        message: 'Registration failed.',
                                        contentType: ContentType.failure,
                                      ),
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(failSnack2);
                                  }
                                } else if (controller.isCheckBox == false) {
                                  var checkBoxSnack = SnackBar(
                                    elevation: 0,
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.transparent,
                                    content: AwesomeSnackbarContent(
                                      title: 'Check Box!',
                                      message: 'You have to accept our terms & conditions.',
                                      contentType: ContentType.warning,
                                    ),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(checkBoxSnack);
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
                                text: 'REGISTER',
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
                BottomContainer(
                  text: 'Already have an Account?',
                  onPressed: () {
                    Get.offNamed('/login');
                  },
                  textType: 'Log in',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
