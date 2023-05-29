import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../widgets/experience/experience_items.dart';
import '../../widgets/home/experience_text.dart';
import '../../widgets/profile/user_experiences.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 500,
              height: 396,
              decoration: BoxDecoration(
                color: Color(0xffFF7A00).withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 75,
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
                  Center(
                    child: Text(
                      'Georgia Laurence',
                      style: TextStyle(
                        fontFamily: 'Circular',
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 17,
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(31),
                            child: Image.asset(
                              'assets/images/georgia.png',
                              fit: BoxFit.cover,
                              height: 134,
                              width: 134,
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 180,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/certified_profile.png',
                                    height: 16,
                                    width: 19,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'In-Person Host Certified',
                                    style: TextStyle(
                                      fontFamily: 'Circular',
                                      color: Color(0xff2B9122),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 177,
                              height: 30,
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(255, 122, 0, 0.4),
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/message.png',
                                    width: 30,
                                    height: 16,
                                  ),
                                  Center(
                                      child: Text(
                                        'Send a Message',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Circular',
                                          fontSize: 12,
                                        ),
                                      )),
                                ],
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
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17,),
              child: Text(
                'Joined in March, 2019',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Circular',
                ),
              ),
            ),
            const SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.only(left: 17,),
              child: Row(
                children: [
                  Image.asset('assets/images/correct.png', height: 32, width: 25,),
                  SizedBox(width: 8,),
                  Text(
                    'Identity Verified',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Circular',
                      color: Color(0xff676767),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15,),
              child: Row(
                children: [
                  Icon(Icons.home, color: Color(0xff676767), size: 30,),
                  SizedBox(width: 8,),
                  Text(
                    'Based in Elgouna, Egypt',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Circular',
                      color: Color(0xff676767),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15,),
              child: Row(
                children: [
                  Icon(Icons.star, size: 22, color: Color(0xff676767),),
                  SizedBox(width: 8,),
                  Text(
                    '120 Reviews',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Circular',
                      color: Color(0xff676767),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    width: 73,
                    height: 28,
                    decoration: BoxDecoration(
                      color: Color(0xffFF7A00).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Center(
                      child: Text(
                        'Avg. 4.5',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Circular',
                          color: Color(0xffFF7A00),
                        ),
                      ),
                    ),

                  ),
                ],
              ),
            ),
            const SizedBox(height: 36,),
            Padding(
              padding: const EdgeInsets.only(left: 17,),
              child: Text(
                'About Georgia',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Circular',
                ),
              ),
            ),
            const SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.only(left: 17,),
              child: Text(
                'Learn the basics of Resin Art and get ready to create your first resin painting art piece with Artist Fidaa. You know why Resin is a great medium to work with? Because you can resin almost anything. If you’re interested in art and learning new things? Then it’s for you! All skill levels are welcomed.',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Circular',
                  color: Color(0xff676767),
                ),
              ),
            ),
            const SizedBox(height: 36,),
            Padding(
              padding: const EdgeInsets.only(left: 17,),
              child: Text(
                'Georgia’s Experiences • 3',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Circular',
                ),
              ),
            ),
            const SizedBox(height: 29,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'Sort by',
                    style: TextStyle(
                      fontFamily: 'Circular',
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  width: 19,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Price ↑',
                    style:
                    TextStyle(color: Colors.white, fontFamily: 'Circular'),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.6),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Price ↓',
                    style:
                    TextStyle(color: Color(0xff676767), fontFamily: 'Circular'),
                  ),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.6),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Best Reviewed',
                    style:
                    TextStyle(color: Color(0xff676767), fontFamily: 'Circular'),
                  ),
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.6),
                    ),
                  ),
                ),
              ],
            ),
            UserExperiences(),
          ],
        ),
      ),
    );
  }
}
