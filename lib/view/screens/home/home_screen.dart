import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viavii_app/view/widgets/home/explore_more.dart';
import 'package:viavii_app/view/widgets/home/featured_items.dart';
import 'package:viavii_app/view/widgets/home/fly_man.dart';
import 'package:viavii_app/view/widgets/home/making_money.dart';
import 'package:viavii_app/view/widgets/home/three_sixty_expirence.dart';
import 'package:viavii_app/view/widgets/home/travel_the_world.dart';
import 'package:viavii_app/view/widgets/home/why_viavii.dart';
import '../../../utils/colors.dart';
import '../../../utils/constants.dart';
import '../../widgets/home/empowering_hosts.dart';
import '../../widgets/home/experience_text.dart';
import '../../widgets/home/explore_by_category.dart';
import '../../widgets/home/home_search_form_text.dart';
import '../../widgets/home/masked_image.dart';
import '../../widgets/home/popular_destinations.dart';
import '../../widgets/home/search_form_text.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Variables
  int selectedCategory = 0;
  List<String> images = [
    'assets/images/city1.png',
    'assets/images/city2.png',
    'assets/images/city3.png',
    'assets/images/city4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 500,
                height: 500,
                color: Color(0xffFF7A00).withOpacity(0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Image.asset(
                            'assets/images/viavii.png',
                            height: 58,
                            width: 72,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 17),
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.menu,
                              ),
                              iconSize: 35,
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ExperienceText(),
                    Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: Container(
                        width: double.infinity,
                        height: 124,
                        decoration: BoxDecoration(
                          color: Color(0xffFF7A00).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HomeSearchFormText(hintText: 'Where do you want to go?',),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Row(
                                //   children: [
                                //     Padding(
                                //       padding: const EdgeInsets.only(
                                //           left: 21, top: 25, bottom: 19),
                                //       child: Row(
                                //         children: const [
                                //           Text(
                                //             '🎄 ',
                                //             style: TextStyle(
                                //                 fontFamily: 'Circular',
                                //                 height: 0.8),
                                //           ),
                                //           Text('Christmas go-to',
                                //               style: TextStyle(
                                //                 fontFamily: 'Circular',
                                //               )),
                                //         ],
                                //       ),
                                //     ),
                                //     // Container(
                                //     //   margin: EdgeInsets.only(right: 5),
                                //     //   width: 120,
                                //     //   height: 40,
                                //     //   decoration: BoxDecoration(
                                //     //     color: Colors.white,
                                //     //     borderRadius: BorderRadius.circular(10),
                                //     //   ),
                                //     //   child: ClipRRect(
                                //     //     borderRadius: BorderRadius.circular(10),
                                //     //     child: Image(
                                //     //       fit: BoxFit.cover,
                                //     //       image: AssetImage(
                                //     //           'assets/images/city1.png'),
                                //     //     ),
                                //     //   ),
                                //     // ),
                                //   ],
                                // ),
                                // SizedBox(
                                //   height: 40,
                                //   child: ListView.builder(
                                //     itemBuilder: (context, index) {
                                //       return GestureDetector(
                                //         child: Container(
                                //           margin: EdgeInsets.only(right: 5),
                                //           width: 120,
                                //           height: 40,
                                //           decoration: BoxDecoration(
                                //             color: Colors.white,
                                //             borderRadius: BorderRadius.circular(10),
                                //           ),
                                //           child: ClipRRect(
                                //             borderRadius: BorderRadius.circular(10),
                                //             child: Image(
                                //               fit: BoxFit.cover,
                                //               image: AssetImage(
                                //                   'assets/images/city1.png'),
                                //             ),
                                //           ),
                                //         ),
                                //       );
                                //     },
                                //     itemCount: 5,
                                //     scrollDirection: Axis.horizontal,
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 160,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    String mask;
                    if (index == 0) {
                      mask = Constants.kMaskFirstIndex;
                    } else if (index == images.length - 1) {
                      mask = Constants.kMaskLastIndex;
                    } else {
                      mask = Constants.kMaskCenter;
                    }
                    return GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: index == 0 ? 20 : 0,
                        ),
                        height: 160,
                        width: 142,
                        child: MaskedImage(
                          asset: images[index],
                          mask: mask,
                        ),
                      ),
                    );
                  },
                  itemCount: images.length,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                    text: const TextSpan(
                  children: [
                    TextSpan(
                        text: 'Book ',
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: 'Circular',
                          color: Colors.black,
                        )),
                    TextSpan(
                        text: 'personalized ',
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'Circular',
                            color: Color(0xffFF7A00))),
                    TextSpan(
                        text:
                            'travel experiences led by talented locals and uncover the hidden gems of your next destination.',
                        style: TextStyle(
                          fontSize: 19,
                          fontFamily: 'Circular',
                          color: Colors.black,
                        )),
                  ],
                )),
              ),
              const Divider(
                color: Color(0xffDCDCDC),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Featured',
                    style: TextStyle(
                      fontFamily: 'Circular',
                      fontSize: 19,
                    ),
                  )),
              FeaturedItems(),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      'Nearby experiences in',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Circular',
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' Elgouna, Red Sea',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Circular',
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: 131,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Color(0xffFF7A00).withOpacity(0.2),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/location.png',
                        height: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Locate Me',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Circular',
                          color: mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              FeaturedItems(),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Travel the World',
                        style: TextStyle(
                          fontFamily: 'Circular',
                          fontSize: 19,
                        ),
                      )),
                  Container(
                    width: 84,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Color(0xffFF7A00).withOpacity(0.3),
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Virtually',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontFamily: 'Circular',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Connect with talented locals from all over the world from the comfort of your home',
                  style: TextStyle(
                    color: Color(0xff676767),
                    fontFamily: 'Circular',
                  ),
                ),
              ),
              TravelTheWorld(),
              const SizedBox(
                height: 40,
              ),
              ExploreMore(),
              const SizedBox(
                height: 40,
              ),
              ExploreByCategory(),
              const SizedBox(
                height: 56,
              ),
              // Problem
              FlyMan(),
              const SizedBox(
                height: 30,
              ),
              PopularDestinations(),
              SizedBox(
                height: 30,
              ),
              ExploreMore(),
              SizedBox(
                height: 56,
              ),
              ThreeSixtyExperience(),
              SizedBox(
                height: 40,
              ),
              MakingMoney(),
              SizedBox(
                height: 40,
              ),
              EmpoweringHosts(),
              SizedBox(
                height: 40,
              ),
              WhyViavii(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
