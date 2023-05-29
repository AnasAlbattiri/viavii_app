import 'package:flutter/material.dart';

class ExperienceText extends StatelessWidget {
  const ExperienceText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 19),
          child: Text(
            'Experience a New',
            style: TextStyle(
              fontSize: 27,
              fontFamily: 'Circular',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Text(
            'Level of Authenticity',
            style: TextStyle(
              fontSize: 27,
              fontFamily: 'Circular',
            ),
          ),
        ),
      ],
    );
  }
}
