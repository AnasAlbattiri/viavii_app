import 'package:flutter/material.dart';
import '../../../utils/colors.dart';

class MakingMoney extends StatelessWidget {
  const MakingMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 375,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/climp.png'),
                  fit: BoxFit.cover),
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: [0.3, 0.9],
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.2),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 55,
                ),
                Text(
                  'Do you know how to host',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Circular',
                      fontSize: 19,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'people and got the time for it?',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Circular',
                      fontSize: 19,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  '✓ A reason for me to Join ViaVii',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Circular',
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '✓ A reason for me to Join ViaVii',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Circular',
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  '✓ A reason for me to Join ViaVii',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Circular',
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 32,
                ),
                InkWell(
                  child: Container(
                    width: 185,
                    height: 50,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(255, 122, 0, 0.4),
                          blurRadius: 3,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: Center(child: Text('Start making money', style: TextStyle(color: Colors.white, fontFamily: 'Circular'),)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
