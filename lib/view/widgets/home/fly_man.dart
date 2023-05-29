import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class FlyMan extends StatelessWidget {
  const FlyMan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
            child: Positioned(
                child: Image.asset(
                  'assets/images/fly_man.png',
                  height: 190,
                  width: 215,
                ))),
        Center(
          child: Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              color: Color(0xffFF7A00).withOpacity(0.1),
              borderRadius: BorderRadius.circular(32),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 180,
                right: 16,
                bottom: 10,
                left: 35,
              ),
              child: Center(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'We helped',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Circular',
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: ' +3000',
                      style: TextStyle(
                        color: mainColor,
                        fontFamily: 'Circular',
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text:
                      ' Traveller get the best out of their vacations and',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Circular',
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: ' +40',
                      style: TextStyle(
                        color: mainColor,
                        fontFamily: 'Circular',
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text:
                      ' Hosts to make money out of their unique values!',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Circular',
                        fontSize: 20,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
