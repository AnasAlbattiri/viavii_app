import 'package:flutter/material.dart';
import 'package:viavii_app/utils/colors.dart';

class WhyViavii extends StatelessWidget {
  const WhyViavii({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 130),
                child: Container(
                  width: double.infinity,
                  height: 375,
                  decoration: BoxDecoration(
                    color: Color(0xffFF7A00).withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 32,
                          left: 16,
                        ),
                        child: Image.asset(
                          'assets/images/love.png',
                          height: 65,
                          width: 65,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Why travelers use',
                            style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'Circular',
                            ),
                          ),
                          Text(
                            ' VIAVII',
                            style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'Circular',
                              color: mainColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 18, top: 220),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                      elevation: 1.5,
                      child: Container(
                        width: 330,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.cyan,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/jamil.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 33),
                                  child: Text(
                                    'Jamil',
                                    style: TextStyle(
                                      fontFamily: 'Circular',
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                'It didn\'t take too long to find the right experience for me and buy it instantly online. I',
                                style: TextStyle(
                                  fontFamily: 'Circular',
                                  fontSize: 13,
                                  color: Color(0xff676767),
                                  height: 1.8,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12,),
                              child: Text(
                                'had a couple of questions regarding the difficulty level of the hike and was right away taken care of by the customer care support.',
                                style: TextStyle(
                                  fontFamily: 'Circular',
                                  fontSize: 13,
                                  color: Color(0xff676767),
                                  height: 1.8,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text(
                                'Amazing hike with so much to discover and',
                                style: TextStyle(
                                  fontFamily: 'Circular',
                                  fontSize: 13,
                                  color: Color(0xff676767),
                                  height: 1.8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Padding(padding: EdgeInsets.only(right: 0));
                },
                itemCount: 3,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
