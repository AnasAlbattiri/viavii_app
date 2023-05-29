import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:viavii_app/data/model/facebook_model.dart';
import 'package:viavii_app/utils/colors.dart';
import 'package:viavii_app/utils/strings.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/model/auth/login_model.dart';

class AuthController extends GetxController {
  // Variables
  bool isVisibility = false;
  bool isCurrentPasswordVisible = false;
  bool isNewPasswordVisible = false;
  bool isCheckBox = false;
  var displayGoogleUserName = '';
  var displayGoogleUserPhoto = '';
  var googleSignIn = GoogleSignIn();
  var facebook = FacebookAuth.instance;
  FaceBookModel? faceBookModel;
  String _accessToken = '';
  LoginModel? loginModel;

  // other methods and properties of the AuthController class
  String get accessToken => _accessToken;

  // method to set the access token
  void setAccessToken(String token) {
    _accessToken = token;
    update();
  }

  // Methods
  void visibility() {
    isVisibility = !isVisibility;
    update();
  }

  void toggleCurrentPasswordVisibility() {
    isCurrentPasswordVisible = !isCurrentPasswordVisible;
    update();
  }

  void toggleNewPasswordVisibility() {
    isNewPasswordVisible = !isNewPasswordVisible;
    update();
  }

  void isChecked() {
    isCheckBox = !isCheckBox;
    update();
  }


  // Authentication Methods
  Future<Map<String, dynamic>> login(String email, String password, BuildContext context) async {
    showDialog(context: context, builder: (context){
      return Center(child: CircularProgressIndicator(
        color: mainColor,
        backgroundColor: Colors.transparent,

      ));
    });
    String url = 'https://dev2.viavii.com/api/auth/login';

    // Set the request headers
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'ptoken': 'bUuXIU8ZnBhLRnXU4X5qqBQRbd1Nof'
    };

    // Set the request body
    Map<String, String> body = {
      'email': email,
      'password': password,
    };

    // Make the API request
    final response = await post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode(body),
    );

    // Parse the response body
    Map<String, dynamic> responseBody = jsonDecode(response.body);

    if (responseBody['status'] != 0) {
      // Store the accessToken in SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      loginModel = LoginModel.fromJson(responseBody);
      await prefs.setString('accessToken', loginModel!.accessToken);

      // Set the accessToken in the AuthController
      setAccessToken(responseBody["access_token"]);

      loginModel = LoginModel.fromJson(responseBody);
      print(loginModel!.status);
      print(loginModel!.accessToken);
    }

    Navigator.of(context).pop();

    // Return the response body
    return responseBody;
  }

  Future<Map<String, dynamic>> register(String firstName, String lastName,
      String email, String password, int term, BuildContext context) async {

    showDialog(context: context, builder: (context){
      return Center(child: CircularProgressIndicator(
        color: mainColor,
        backgroundColor: Colors.transparent,

      ));
    });
    // Create a Map object with the request body
    Map<String, dynamic> body = {
      "first_name": firstName,
      "last_name": lastName,
      "email": email,
      "password": password,
      "term": term,
    };

    // Send a POST request to the endpoint
    var response = await http.post(
      Uri.parse('$baseUrl/auth/register'),
      headers: {
        'Content-Type': 'application/json',
        'ptoken': 'bUuXIU8ZnBhLRnXU4X5qqBQRbd1Nof',
      },
      body: json.encode(body),
    );
    print(response.body);
    // Check if the request was successful
    if (response.statusCode == 200) {
      // Parse the response JSON and return it
      return json.decode(response.body);
    } else {
      // If the request was not successful, throw an error
      throw Exception('Failed to register user: ${response.body}');
    }
    Get.offAllNamed('/login');
  }

  Future<Map<String, dynamic>> logout() async {
    String url = '$baseUrl/auth/logout';

    final prefs = await SharedPreferences.getInstance();
    String? accessToken = prefs.getString('accessToken');

    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
      'ptoken': 'bUuXIU8ZnBhLRnXU4X5qqBQRbd1Nof',
    };

    final response = await post(Uri.parse(url), headers: headers);
    Map<String, dynamic> responseBody = jsonDecode(response.body);
    return responseBody;
  }

  Future<Map<String, dynamic>> getUserDate() async {

    final prefs = await SharedPreferences.getInstance();
    String? accessToken = prefs.getString('accessToken');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
      'ptoken': 'bUuXIU8ZnBhLRnXU4X5qqBQRbd1Nof',
    };

    final response = await http.get(
      Uri.parse('$baseUrl/auth/me'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data;
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  Future<Map<String, dynamic>> updateUserInfo(
      String firstName, String lastName, String email) async {
    final prefs = await SharedPreferences.getInstance();
    String? accessToken = prefs.getString('accessToken');

    if (accessToken == null) {
      throw Exception('Access token not found');
    }

    final url = Uri.parse('$baseUrl/auth/me');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
      'ptoken': 'bUuXIU8ZnBhLRnXU4X5qqBQRbd1Nof',
    };
    final body = {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
    };

    final response = await http.post(url, headers: headers, body: json.encode(body));
    final responseBody = json.decode(response.body);

    if (response.statusCode != 200) {
      throw Exception('Failed to update user information: ${responseBody['message']}');
    }

    return responseBody;
  }

  Future<Map<String, dynamic>> refreshToken(String refreshToken) async {
    // Set the request headers
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'ptoken': 'bUuXIU8ZnBhLRnXU4X5qqBQRbd1Nof',
    };

    // Set the request body
    Map<String, String> body = {
      'refresh_token': refreshToken,
    };

    // Make the API request
    final response = await http.post(
      Uri.parse('$baseUrl/auth/refresh'),
      headers: headers,
      body: jsonEncode(body),
    );

    // Parse the response body
    Map<String, dynamic> responseBody = jsonDecode(response.body);

    // Check if the request was successful
    if (response.statusCode == 200) {
      return responseBody;
    } else {
      // If the request was not successful, throw an error
      throw Exception('Failed to refresh token: ${responseBody['message']}');
    }
  }

  Future<Map<String, dynamic>> changePassword(
    String currentPassword,
    String newPassword,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    String? accessToken = prefs.getString('accessToken');

    // Set the request headers
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken', // Use the accessToken parameter
      // 'X-CSRF-TOKEN': 'xT6Pr5QAjqAxqMJVxpvRdBFaZVhgtC9BxNgQ18nu',
      'ptoken': 'bUuXIU8ZnBhLRnXU4X5qqBQRbd1Nof'
    };

    // Set the request body
    Map<String, String> body = {
      'current-password': currentPassword,
      'new-password': newPassword,
    };

    // Make the API request
    final response = await post(
      Uri.parse('$baseUrl/auth/change-password'),
      headers: headers,
      body: jsonEncode(body),
    );
    print(response.body);

    // Parse the response body
    Map<String, dynamic> responseBody = jsonDecode(response.body);

    // Return the response body
    return responseBody;
  }

  void googleSignUp() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
      await googleUser!.authentication;
      final email = googleUser.email;
      final firstName = googleUser.displayName;
      // You can now use the email, firstName, and lastName to call your API
      displayGoogleUserName = googleUser.displayName!;
      displayGoogleUserPhoto = googleUser.photoUrl!;
      update(); // Like emit
      Get.offNamed('/main');
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void facebookSignUp() async {
    final LoginResult loginResult = await facebook.login();
    final data = await facebook.getUserData();
    faceBookModel =
        FaceBookModel.fromJson(data); // جيبلي البيانات اللي جوا المودل
    // update();
    Get.offNamed('/main');
  }
}



