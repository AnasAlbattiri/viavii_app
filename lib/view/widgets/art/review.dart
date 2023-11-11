import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class Review extends StatelessWidget {
  const Review({
    Key? key,
    required this.travellerName,
    required this.bookedDate,
    required this.travellerReview,
    required this.travellerImage,
  }) : super(key: key);

  final String travellerName;
  final String bookedDate;
  final String travellerReview;
  final String travellerImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 36,
                left: 18,
              ),
              child: Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      travellerImage,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 33, left: 3),
                  child: Text(
                    travellerName,
                    style: TextStyle(
                      fontFamily: 'Circular',
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Container(
                    height: 26,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color(0xffFF7A00).withOpacity(0.1),
                    ),
                    child: Center(
                      child: Text(
                        bookedDate,
                        style: TextStyle(
                          fontSize: 12.5,
                          fontFamily: 'Circular',
                          color: mainColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 14,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Text(
            travellerReview,
            style: TextStyle(
              fontFamily: 'Circular',
              fontSize: 13,
              color: Color(0xff676767),
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
