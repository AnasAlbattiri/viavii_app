import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:viavii_app/data/model/auth/user_info_model.dart';
import 'package:viavii_app/logic/controller/auth_controller.dart';
import 'package:viavii_app/utils/colors.dart';

class UserInfoScreen extends StatefulWidget {
  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {

  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data'),
        centerTitle: true,
        backgroundColor: mainColor,
      ),
      body: FutureBuilder(
        future: controller.getUserDate(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(
                color: mainColor,
              ),
            );
          }
          if (snapshot.hasData){
            var userData = snapshot.data;
            var email = userData!['data']['email'];
            var data = userData['data'];
            var name = userData['data']['name'];
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('All Data:', style: TextStyle(fontWeight: FontWeight.bold,),),
                  Text('$data', style: TextStyle(fontWeight: FontWeight.bold, color: mainColor),),
                  SizedBox(height: 5,),
                  Text('Email: $email'),
                  Text('Name: $name'),
                ],
              ),
            );
          } else {
            return Center(
              child: const CircularProgressIndicator(
                color: mainColor,
              ),
            );
          }
        },
      ),
    );
  }
}
