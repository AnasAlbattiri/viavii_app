import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viavii_app/logic/controller/search_controller.dart';

class HomeSearchFormText extends StatelessWidget {
  HomeSearchFormText({Key? key, required this.hintText}) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      cursorColor: Colors.black,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: Colors.white,
        focusColor: Colors.red,
        prefixIcon: Icon(
          Icons.search,
          color: Color(0xff8D8D8D),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: 'Circular',
          color: Color(0xff676767),
          fontSize: 14,
        ),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
