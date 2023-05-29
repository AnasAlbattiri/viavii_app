import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:viavii_app/routes/routes.dart';
import '../../../utils/colors.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  FirebaseAuth auth = FirebaseAuth.instance;
  String? finalEmail;
  // String? finalRegisterEmail;

  @override
  void initState() {
    getValidationData().whenComplete(() async {
      Future.delayed(Duration(seconds: 2,)).then((value) {
        Get.offNamed(finalEmail == null ? '/welcome' : '/main');
      });
    });
    // getRegisterValidationData().whenComplete(() async {
    //   Future.delayed(Duration(seconds: 2,)).then((value) {
    //     Get.offNamed(finalRegisterEmail == null ? '/welcome' : '/main');
    //   });
    // });
    super.initState();
  }

  Future getValidationData() async {
      final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      var obtainedEmail = sharedPreferences.getString('email');
      setState(() {
        finalEmail = obtainedEmail;
      });
      print(finalEmail);
  }

  // Future getRegisterValidationData() async {
  //   final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   var obtainedRegisterEmail = sharedPreferences.getString('register');
  //   setState(() {
  //     finalRegisterEmail = obtainedRegisterEmail;
  //   });
  //   print(finalRegisterEmail);
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/viavii.png'),
              width: 300,
            ),
            SizedBox(
              height: 50,
            ),
            SpinKitThreeBounce(
              color: mainColor,
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
