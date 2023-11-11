import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../else/text_utils.dart';

class TravelTheWorld extends StatelessWidget {
  const TravelTheWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: SizedBox(
        height: 290,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 6, right: 6, bottom: 6, top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 196,
                        width: 170,
                        child: Card(
                          color: Colors.white,
                          elevation: 0.4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              Get.toNamed('/resin_epoxy_art_details');
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/images/art.png',
                                    height: 196,
                                    width: double.maxFinite,
                                    fit: BoxFit.cover,
                                  ),
                                ),
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
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          'Rasin Epoxy Art',
                          style: TextStyle(
                            fontFamily: 'Circular',
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Image.asset(
                              'assets/images/video.png',
                              height: 15,
                            ),
                          ),
                          Text(
                            '  Recorded experience',
                            style: TextStyle(
                                fontFamily: 'Circular',
                                fontSize: 10,
                                color: Color(0xff676767)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: SizedBox(
                        height: 350,
                        width: 250,
                        child: Card(
                          color: Colors.white,
                          elevation: 0.4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              Get.toNamed('/experience_details');
                            },
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    'assets/images/art.png',
                                    height: 350,
                                    width: double.maxFinite,
                                    fit: BoxFit.cover,
                                  ),
                                ),
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
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        'Rasin Epoxy Art',
                        style: TextStyle(
                          fontFamily: 'Circular',
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Image.asset(
                            'assets/images/video.png',
                            height: 15,
                          ),
                        ),
                        Text(
                          '  Recorded experience',
                          style: TextStyle(
                              fontFamily: 'Circular',
                              fontSize: 14,
                              color: Color(0xff676767)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(
              right: 15,
            ),
          ),
          itemCount: 1,
        ),
      ),
    );
  }
}
