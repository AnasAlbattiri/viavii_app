import 'package:flutter/material.dart';

class ExperienceDetailsImage extends StatelessWidget {
  const ExperienceDetailsImage({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Container(
        width: 375,
        height: 251,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          image: DecorationImage(
            image: NetworkImage(
              imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
