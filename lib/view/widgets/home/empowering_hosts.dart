import 'package:flutter/material.dart';

class EmpoweringHosts extends StatelessWidget {
  const EmpoweringHosts({Key? key}) : super(key: key);

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
            'Empowering local hosts',
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
            'Interact with our local hosts and form a lifelong genuine connection and memories of a lifetime',
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
        SizedBox(
          height: 191,
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 282,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 17,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: 282,
                        height: 191,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/laith.png'),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      Center(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/images/play.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Padding(padding: EdgeInsets.only(right: 0));
            },
            itemCount: 2,
          ),
        ),
        SizedBox(
          height: 31,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 17,
          ),
          child: Text(
            'An expert in Salti food and wonderful local stories',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Circular',
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 17,
          ),
          child: Text(
            'Meet Leith',
            style: TextStyle(
              color: Color(0xff676767),
              fontFamily: 'Circular',
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
