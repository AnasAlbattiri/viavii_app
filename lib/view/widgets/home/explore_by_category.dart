import 'package:flutter/material.dart';

class ExploreByCategory extends StatelessWidget {
  const ExploreByCategory({Key? key}) : super(key: key);

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
            'Explore by category',
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
          height: 20,
        ),
        // First
        SizedBox(
          height: 140,
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 6,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 140,
                          width: 165,
                          child: Card(
                            color: Colors.white,
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(12),
                              onTap: () {},
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/images/adventure.png',
                                      height: 196,
                                      width: double.maxFinite,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, bottom: 16, right: 16, top: 26),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.black45,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Image.asset(
                                            'assets/images/adventure_icon.png',
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 20,
                                    bottom: 20,
                                    left: 20,
                                    top: 77,
                                    child: Text(
                                      'Adventure & outdoors',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Circular',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        SizedBox(
                          height: 140,
                          width: 165,
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
                              onTap: () {},
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/images/colorful_art.png',
                                      height: 196,
                                      width: double.maxFinite,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, bottom: 16, right: 16, top: 26),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.black45,
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Image.asset(
                                            'assets/images/art_icon.png',
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 20,
                                    bottom: 20,
                                    left: 20,
                                    top: 90,
                                    child: Text(
                                      'Arts & Culture',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Circular',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        SizedBox(
                          height: 140,
                          width: 165,
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
                              onTap: () {},
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/images/colorful_art.png',
                                      height: 196,
                                      width: double.maxFinite,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, bottom: 16, right: 16, top: 26),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.black45,
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Image.asset(
                                            'assets/images/art_icon.png',
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 20,
                                    bottom: 20,
                                    left: 20,
                                    top: 90,
                                    child: Text(
                                      'Arts & Culture',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Circular',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                right: 0,
              ),
            ),
            itemCount: 1,
          ),
        ),
        SizedBox(height: 20,),
        // Second
        SizedBox(
          height: 140,
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 6,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 140,
                          width: 165,
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
                              onTap: () {},
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/images/adventure.png',
                                      height: 196,
                                      width: double.maxFinite,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, bottom: 16, right: 16, top: 26),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.black45,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Image.asset(
                                            'assets/images/adventure_icon.png',
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 20,
                                    bottom: 20,
                                    left: 20,
                                    top: 77,
                                    child: Text(
                                      'Adventure & outdoors',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Circular',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        SizedBox(
                          height: 140,
                          width: 165,
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
                              onTap: () {},
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/images/colorful_art.png',
                                      height: 196,
                                      width: double.maxFinite,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, bottom: 16, right: 16, top: 26),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.black45,
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Image.asset(
                                            'assets/images/art_icon.png',
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 20,
                                    bottom: 20,
                                    left: 20,
                                    top: 90,
                                    child: Text(
                                      'Arts & Culture',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Circular',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        SizedBox(
                          height: 140,
                          width: 165,
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
                              onTap: () {},
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/images/colorful_art.png',
                                      height: 196,
                                      width: double.maxFinite,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, bottom: 16, right: 16, top: 26),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.black45,
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Image.asset(
                                            'assets/images/art_icon.png',
                                            height: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 20,
                                    bottom: 20,
                                    left: 20,
                                    top: 90,
                                    child: Text(
                                      'Arts & Culture',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Circular',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                right: 0,
              ),
            ),
            itemCount: 1,
          ),
        ),
      ],
    );
  }
}
