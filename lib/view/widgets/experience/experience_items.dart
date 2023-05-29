import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../else/text_utils.dart';

class ExperienceItems extends StatelessWidget {
  const ExperienceItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        childAspectRatio: 0.74,
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 6.0,
        maxCrossAxisExtent: 200,
      ),
      itemBuilder: (context, index) {
        return SizedBox(
          width: 200,
          height: 330,
          child: Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 2.0,
                    blurRadius: 0.2,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Featured Logo
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/featured1.png',
                            height: 145,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 78,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                'Arts & Culture',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Circular',
                                  color: Color(0xff6100FF),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: 15,
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 18,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 0.6),
                                  borderRadius: BorderRadius.circular(4.1),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/message.png', height: 10,),
                                    TextUtils(
                                      text: ' English',
                                      fontSize: 8,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xffFFFFFF),
                                      fontFamily: 'Circular',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: 34,
                                height: 16.30,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 0.6),
                                  borderRadius: BorderRadius.circular(4.1),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/timer.png', height: 10,),
                                    TextUtils(
                                      text: ' 2hrs',
                                      fontSize: 8,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xffFFFFFF),
                                      fontFamily: 'Circular',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // New York..
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.map_outlined,
                                color: Colors.grey,
                                size: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'New York',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Circular',
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Museum of Modern Art',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Circular',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                    // The Stars
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Color(0xffFFC700),
                          ),
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Color(0xffFFC700),
                          ),
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Color(0xffFFC700),
                          ),
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Color(0xffFFC700),
                          ),
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Color.fromRGBO(255, 199, 0, 0.3),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              '30 Traveller Reviews',
                              style: TextStyle(
                                fontSize: 8,
                                fontFamily: 'Circular',
                                color: Color(0xff676767),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // From $$..
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'from ',
                            style: TextStyle(
                                color: Color(0xff676767),
                                fontFamily: 'Circular',
                                fontSize: 12),
                          ),
                          Text(
                            '\$160 ',
                            style: TextStyle(
                              color: Color(0xffFF7A00),
                              fontFamily: 'Circular',
                              fontSize: 16,
                              letterSpacing: -0.04,
                            ),
                          ),
                          Text(
                            '\$200',
                            style: TextStyle(
                              color: Color(0xffACACAC).withOpacity(0.8),
                              fontFamily: 'Circular',
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 6,),
                      child: Container(
                        width: 85,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(61, 195, 49, 0.1),
                          borderRadius: BorderRadius.circular(134),
                        ),
                        child: Center(
                          child: Text(
                            'You’re saving \$40',
                            style: TextStyle(
                                color: Color(0xff2B9122),
                                fontSize: 8.5,
                                fontFamily: 'Circular'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      itemCount: 8,
    );
  }
}
