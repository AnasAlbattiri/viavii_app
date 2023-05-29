import 'package:flutter/material.dart';
import 'package:viavii_app/view/widgets/else/text_utils.dart';

import '../../../utils/colors.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: SizedBox(
        height: 275,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 275,
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
                                'assets/images/featured1.png',
                                height: 145,
                                width: double.maxFinite,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              right: 11,
                              child: Container(
                                width: 80,
                                height: 17.24,
                                decoration: BoxDecoration(
                                  color: mainColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(255, 112, 0, 0.2),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
                                ),
                                child: Center(
                                  child: TextUtils(
                                    text: '         FEATURED',
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    fontFamily: 'Circular',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 160),
                              child: Image.asset(
                                'assets/images/featured_logo.png',
                                height: 25,
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
                                height: 3.5,
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
                                size: 20,
                                color: Color(0xffFFC700),
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Color(0xffFFC700),
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Color(0xffFFC700),
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Color(0xffFFC700),
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Color.fromRGBO(255, 199, 0, 0.3),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 5,
                                ),
                                child: Text(
                                  '30 Traveller Reviews',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: 'Circular',
                                    color: Color(0xff676767),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        // From $$..
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
                                    fontSize: 11.8919),
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
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 100,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(61, 195, 49, 0.1),
                                  borderRadius: BorderRadius.circular(134),
                                ),
                                child: Center(
                                  child: Text(
                                    'You’re saving \$40',
                                    style: TextStyle(
                                        color: Color(0xff2B9122),
                                        fontSize: 10,
                                        fontFamily: 'Circular'),
                                  ),
                                ),
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
          itemCount: 10,
        ),
      ),
    );
  }
}
