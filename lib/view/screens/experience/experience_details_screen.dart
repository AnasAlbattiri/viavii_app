import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viavii_app/data/model/search/search_es_model.dart';
import 'package:viavii_app/utils/colors.dart';
import '../../../logic/controller/search_controller.dart';
import '../../widgets/art/review.dart';
import '../../widgets/experience/experience_details_image.dart';

class ExperienceDetailsScreen extends StatefulWidget {
  ExperienceDetailsScreen({
    Key? key,
    required this.datum,
  }) : super(key: key);

  final Datum datum;
  final searchController = Get.put(MySearchController());

  @override
  State<ExperienceDetailsScreen> createState() =>
      _ExperienceDetailsScreenState();
}

class _ExperienceDetailsScreenState extends State<ExperienceDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 685,
                decoration: BoxDecoration(
                  color: const Color(0xff00FFA3).withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
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
                              icon: const Icon(
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
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18.0,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Image.asset(
                              'assets/images/video.png',
                              height: 16.5,
                            ),
                          ),
                          const Text(
                            '  Recorded experience',
                            style: TextStyle(
                                fontFamily: 'Circular',
                                fontSize: 14,
                                color: Color(0xff676767)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.datum.title,
                              maxLines: 2,
                              style: TextStyle(
                                fontFamily: 'Circular',
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Color(0xffC4C4C4),
                              size: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 18,
                      ),
                      child: Text(
                        'Learn the basics of Resin Art and get ready to create your first resin painting art piece with Artist Fidaa. You know why Resin is a great medium to work with? Because you can resin almost anything.',
                        style: TextStyle(
                          fontFamily: 'Circular',
                          fontSize: 13.3,
                          color: Color(0xff502701),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Container(
                        width: 165,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(255, 122, 0, 0.2),
                              offset: Offset(0.3, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ' \$${widget.datum.price}',
                              style: TextStyle(
                                fontFamily: 'Circular',
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Expanded(
                              child: Text(
                                'Per Session',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontFamily: 'Circular',
                                  fontSize: 18,
                                  color: Color(0xff979797),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ExperienceDetailsImage(
                      imageUrl: widget.datum.image,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.map_outlined,
                          color: Colors.grey,
                          size: 18,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Text(
                            widget.datum.address,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'Circular',
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_filled_rounded,
                          color: Colors.grey,
                          size: 18,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          widget.datum.duration,
                          style: TextStyle(
                            fontFamily: 'Circular',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.volume_up,
                          color: Colors.grey,
                          size: 18,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Arabic & English',
                          style: TextStyle(
                            fontFamily: 'Circular',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.groups_outlined,
                          color: Colors.grey,
                          size: 18,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          '10 Attendees Max',
                          style: TextStyle(
                            fontFamily: 'Circular',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Divider(
                color: Color(0xffDCDCDC),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                    ),
                    child: Text(
                      'Additional Info',
                      style: TextStyle(
                        fontFamily: 'Circular',
                        fontSize: 14.24,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.timeline,
                          color: Color(0xff979797),
                        ),
                        Text(
                          ' Difficulty: Moderate',
                          style: TextStyle(
                            fontFamily: 'Circular',
                            fontSize: 14.24,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Icon(
                          Icons.directions_bus_sharp,
                          color: Color(0xff979797),
                        ),
                        Expanded(
                          child: Text(
                            ' Transportation Included',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontFamily: 'Circular',
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 15,
                          height: 21,
                          decoration: BoxDecoration(
                            color: Color(0xff979797),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.close_outlined,
                            color: Colors.white,
                            size: 10,
                          ),
                        ),
                        Text(
                          ' No Cancellation',
                          style: TextStyle(
                            fontFamily: 'Circular',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  'More about "${widget.datum.title}"',
                  style: TextStyle(
                    fontFamily: 'Circular',
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 18,
                ),
                child: Text(
                  'Learn the basics of Resin Art and get ready to create your first resin painting art piece with Artist Fidaa. You know why Resin is a great medium to work with? Because you can resin almost anything. If you’re interested in art and learning new things? Then it’s for you! All skill levels are welcomed. Have these tools ready and let’s get started:  1. small Pdf boards or canvas 2. epoxy resin ( artistic brand) 3. acrylic paints  4. plastic disposable cups 5. large popsicle sticks 6. latex gloves 7. wet wipes 8. torch 9. heat gun (optional) 10. Digital electrical scale for weighing resin',
                  style: TextStyle(
                    fontFamily: 'Circular',
                    fontSize: 13.2,
                    color: Color(0xff676767),
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                color: Color(0xffDCDCDC),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                ),
                child: Row(
                  children: [
                    Text(
                      'Travellers Reviews',
                      style: TextStyle(
                        fontFamily: 'Circular',
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    Text(
                      ' 12',
                      style: TextStyle(
                        fontFamily: 'Circular',
                        fontSize: 16,
                        color: mainColor,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Flexible(
                      child: Container(
                        width: 105,
                        height: 40,
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
                        child: Center(
                            child: Text(
                          'Add Review',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Circular',
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
              const Review(
                travellerImage: 'assets/images/jacob.png',
                bookedDate: 'Booked July 2020',
                travellerName: 'Jacob Jones',
                travellerReview:
                    'Good value for the money, even though location is not exactly great, all the services were provided, room was very clean and the pool was wonderful as well',
              ),
              const SizedBox(
                height: 24,
              ),
              const Review(
                travellerImage: 'assets/images/bessie.png',
                bookedDate: 'Booked March 2019',
                travellerName: 'Bessie Cooper',
                travellerReview:
                    'Good value for the money, even though location is not exactly great, all the services were provided, room was very clean and the pool was wonderful as well',
              ),
              const SizedBox(
                height: 24,
              ),
              const Review(
                travellerImage: 'assets/images/devon.png',
                bookedDate: 'Booked 2 years ago',
                travellerName: 'Devon Lane',
                travellerReview:
                    'Good value for the money, even though location is not exactly great, all the services were provided, room was very clean and the pool was wonderful as well',
              ),
              SizedBox(height: MediaQuery.of(context).padding.bottom + 100),
            ],
          ),
        ),
      ),
    );
  }
}
