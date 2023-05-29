import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../else/text_utils.dart';

class ThreeSixtyExperience extends StatelessWidget {
  const ThreeSixtyExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: double.infinity,
      color: Color(0xFFFF7A00).withOpacity(0.1),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          Image.asset(
            'assets/images/360.png',
            width: 105,
            height: 47,
          ),
          SizedBox(height: 5,),
          Text(
            'Experiences',
            style: TextStyle(color: Color(0xffFF7A00), fontFamily: 'Circular'),
          ),
          SizedBox(
            height: 205,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 370,
                  child: Card(
                    elevation: 0.4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Featured Logo
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/images/space.png',
                                    height: 145,
                                    width: double.maxFinite,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            // New York..
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Experience Name Goes here',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Circular',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,

                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.map_outlined,
                                        color: Colors.grey,
                                        size: 10,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Location Goes here',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Circular',
                                          fontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  right: 10,
                ),
              ),
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
