import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viavii_app/logic/controller/auth_controller.dart';

class RefreshTokenScreen extends StatefulWidget {
  @override
  _RefreshTokenScreenState createState() => _RefreshTokenScreenState();
}

class _RefreshTokenScreenState extends State<RefreshTokenScreen> {

  final authController = Get.put(AuthController());
  bool _isRefreshing = false;
  String _message = '';

  void _refreshToken() async {
    setState(() {
      _isRefreshing = true;
      _message = '';
    });

    try {
      // await authController.refreshToken();
      setState(() {
        _isRefreshing = false;
        _message = 'Token refreshed successfully';
      });
    } catch (e) {
      setState(() {
        _isRefreshing = false;
        _message = 'Failed to refresh token';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _isRefreshing ? null : _refreshToken,
              child: _isRefreshing ? CircularProgressIndicator() : Text('Refresh Token'),
            ),
            SizedBox(height: 10),
            Text(_message),
          ],
        ),
      ),
    );
  }
}
