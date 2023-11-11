import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viavii_app/logic/controller/search_controller.dart';
import 'package:viavii_app/view/widgets/experience/experience_items.dart';
import '../../widgets/home/search_form_text.dart';

class ExperienceScreen extends StatelessWidget {
  ExperienceScreen({Key? key}) : super(key: key);

  final searchController = Get.put(MySearchController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 500,
            height: 450,
            decoration: BoxDecoration(
              color: Color(0xff00FFA3).withOpacity(0.1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
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
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Experience a new ways to live from your comfort of your home! ',
                              style: TextStyle(
                                fontFamily: 'Circular',
                                fontSize: 27,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: SearchFormText(
                      hintText: 'Search with name or price',),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
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
                  style: TextStyle(
                      color: Color(0xff676767), fontFamily: 'Circular'),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffAAF1D9),
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
                  style: TextStyle(
                      color: Color(0xff676767), fontFamily: 'Circular'),
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
                  style: TextStyle(
                      color: Color(0xff676767), fontFamily: 'Circular'),
                ),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.6),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          ExperienceItems(
              experiencesDetailsList: searchController.experiencesEsList),
        ],
      ),
    );
  }
}
