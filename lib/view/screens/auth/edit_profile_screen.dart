import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viavii_app/data/model/auth/user_info_model.dart';

import '../../../logic/controller/auth_controller.dart';
import '../../../utils/colors.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  // Variables
  final _formKey = GlobalKey<FormState>();
  final controller = Get.put(AuthController());
  UserInfoModel? userInfoModel;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        centerTitle: true,
        backgroundColor: mainColor,
      ),
      body: FutureBuilder(
        future: controller.getUserDate(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: mainColor,
              ),
            );
          }
          if (snapshot.hasData) {
            var userData = snapshot.data;
            var email = userData!['data']['email'];
            var data = userData['data'];
            var name = userData['data']['name'];
            var firstName = userData['data']['first_name'];
            var lastName = userData['data']['last_name'];
            return Center(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        // controller: firstNameController,
                        initialValue: firstName,
                        decoration: InputDecoration(
                          labelText: 'First Name',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your first name';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          firstName = value!;
                        },
                      ),
                      TextFormField(
                        // controller: lastNameController,
                        initialValue: lastName,
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your last name';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          lastName = value!;
                        },
                      ),
                      TextFormField(
                        // controller: emailController,
                        initialValue: email,
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!isValidEmail(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          email = value!;
                        },
                      ),
                      SizedBox(height: 16.0),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: mainColor,
                          ),
                          child: Text('Save'),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              // call your update user info method here and pass the new values
                              final response = await controller.updateUserInfo(
                                  firstName,
                                  lastName,
                                  email);
                              // then show success message to the user
                              if (response['status'] == true) {
                                var successSnack = SnackBar(
                                  elevation: 0,
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.transparent,
                                  content: AwesomeSnackbarContent(
                                    title: 'Well done!',
                                    message: 'You has been successfully updated.',
                                    contentType: ContentType.success,
                                  ),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(successSnack);
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
                        ),
                      ),
                    ],
                  ),
                ),
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

  bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
}
