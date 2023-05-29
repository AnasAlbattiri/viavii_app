import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../logic/controller/topbar_controller.dart';

class SearchFormText extends StatelessWidget {
  SearchFormText({Key? key, required this.hintText}) : super(key: key);

  final controller = Get.put(TopBarController());
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.searchController,
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
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 4, top: 3),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF1F1F1),
            ),
            child: Icon(
              Icons.menu,
              color: Colors.orange,
            ),
          ),
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
