import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:viavii_app/data/model/auth/login_model.dart';

import '../../utils/colors.dart';

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

LoginModel? loginModel;

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
          child: GridView.count(
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            crossAxisCount: 3,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: mainColor,
                  image: DecorationImage(image: AssetImage('assets/images/city1.png'), fit: BoxFit.cover),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: mainColor,
                  image: DecorationImage(image: AssetImage('assets/images/city2.png'), fit: BoxFit.cover),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: mainColor,
                  image: DecorationImage(image: AssetImage('assets/images/city3.png'), fit: BoxFit.cover),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: mainColor,
                  image: DecorationImage(image: AssetImage('assets/images/city3.png'), fit: BoxFit.cover),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: mainColor,
                  image: DecorationImage(image: AssetImage('assets/images/city3.png'), fit: BoxFit.cover),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: mainColor,
                  image: DecorationImage(image: AssetImage('assets/images/city3.png'), fit: BoxFit.cover),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: mainColor,
                  image: DecorationImage(image: AssetImage('assets/images/city3.png'), fit: BoxFit.cover),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: mainColor,
                  image: DecorationImage(image: AssetImage('assets/images/city3.png'), fit: BoxFit.cover),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
