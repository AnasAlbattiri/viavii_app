import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class ExploreMore extends StatelessWidget {
  const ExploreMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 17,
      ),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 172,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(46),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(80, 39, 1, 0.1),
                blurRadius: 3,
                spreadRadius: 3,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Center(
            child: Text(
              ' Explore More      +',
              style: TextStyle(
                color: mainColor,
                fontSize: 16,
                fontFamily: 'Circular',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
