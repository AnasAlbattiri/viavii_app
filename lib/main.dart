import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viavii_app/routes/routes.dart';
import 'package:viavii_app/view/screens/home/home_screen.dart';
import 'package:viavii_app/view/screens/main_screen.dart';
import 'package:viavii_app/view/screens/splash/splash_screen.dart';
import 'package:viavii_app/view/screens/test.dart';
import 'package:viavii_app/view/screens/welcome_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ViaVii Demo',
      // home: Test(),
      initialRoute: AppRoutes.splash,
      getPages: AppRoutes.routes,
    );
  }
}

