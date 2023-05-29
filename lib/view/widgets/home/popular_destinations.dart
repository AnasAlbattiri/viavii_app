import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../else/text_utils.dart';

class PopularDestinations extends StatelessWidget {
  const PopularDestinations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 17,
          ),
          child: Text(
            'Popular destinations',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Circular',
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 17,
          ),
          child: Text(
            'Bucket list destinations with tailored experiences to suit            your preferences',
            style: TextStyle(
              color: Color(0xff676767),
              fontFamily: 'Circular',
              fontSize: 13,
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            height: 240,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  elevation: 1,
                  child: Container(
                    width: 170,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(14),
                                child: Image.asset(
                                  'assets/images/amman.png',
                                  fit: BoxFit.cover,
                                  height: 170,
                                  width: 165,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 99,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    'Arts & Culture',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Circular',
                                      color: Color(0xff6100FF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            'Amman',
                            style:
                                TextStyle(fontSize: 18, fontFamily: 'Circular'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 6,
                          ),
                          child: Text(
                            'City of Authenticity.',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Circular',
                              color: Color(0xff676767),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  right: 5,
                ),
              ),
              itemCount: 3,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            height: 240,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  elevation: 1,
                  child: Container(
                    width: 170,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(14),
                                child: Image.asset(
                                  'assets/images/amman.png',
                                  fit: BoxFit.cover,
                                  height: 170,
                                  width: 165,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 99,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    'Arts & Culture',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Circular',
                                      color: Color(0xff6100FF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            'Amman',
                            style:
                                TextStyle(fontSize: 18, fontFamily: 'Circular'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 6,
                          ),
                          child: Text(
                            'City of Authenticity.',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Circular',
                              color: Color(0xff676767),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  right: 5,
                ),
              ),
              itemCount: 3,
            ),
          ),
        ),
      ],
    );
  }
}
