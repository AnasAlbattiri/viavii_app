import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../utils/colors.dart';
import '../../widgets/else/text_utils.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/images/city3.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.3),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black.withOpacity(0.3),
                  ),
                  height: 60,
                  width: 190,
                  child: Center(
                    child: TextUtils(
                      text: 'Welcome',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontFamily: 'Circular',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black.withOpacity(0.3),
                    ),
                    height: 60,
                    width: 240,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextUtils(
                          text: 'to',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          fontFamily: '',
                        ),
                        SizedBox(width: 15,),
                        TextUtils(
                          text: 'ViaVii',
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          fontFamily: '',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 250,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 40,
                      ),
                    ),
                    onPressed: () {
                      Get.offNamed('/login');
                    },
                    child: TextUtils(
                      text: 'Get started',
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontFamily: '',
                    )),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextUtils(
                        text: 'Don\'t have an Account?',
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontFamily: '',
                    ),
                    TextButton(
                        onPressed: () {
                          Get.offNamed('/register');
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            height: 2,
                            color: mainColor,
                            decoration: TextDecoration.underline,
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
