import 'package:flutter/material.dart';
import 'package:viavii_app/utils/colors.dart';

class OurParents extends StatelessWidget {
  const OurParents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Our Parents',
            style: TextStyle(fontFamily: 'Circular', fontSize: 20),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 135,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xffEFEFEF),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0, top: 55),
                  child: Image.asset('assets/images/qatar.png', width: 84, height: 45,),
                ),
              ],
            ),
            SizedBox(
              width: 1.5,
            ),
            Container(
              width: 135,
              height: 150,
              decoration: BoxDecoration(
                color: Color(0xffEFEFEF),
                image: DecorationImage(
                  image: AssetImage('assets/images/amadeus.png'),
                ),
              ),
            ),
            SizedBox(
              width: 1.5,
            ),
            Stack(
              children: [
                Container(
                  width: 135,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xffEFEFEF),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/lgna_olia.png',
                        width: 88,
                        height: 90,
                      )),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
