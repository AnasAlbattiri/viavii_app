import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viavii_app/logic/controller/search_controller.dart';
import 'package:viavii_app/utils/colors.dart';
import '../../../data/model/search/search_es_model.dart';
import '../../screens/experience/experience_details_screen.dart';
import '../else/text_utils.dart';

class ExperienceItems extends StatelessWidget {
  final List<Datum> experiencesDetailsList;

  ExperienceItems({Key? key, required this.experiencesDetailsList})
      : super(key: key);

  final searchController = Get.put(MySearchController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (searchController.isLoading.value) {
        return Center(
          child: CircularProgressIndicator(
            color: mainColor,
          ),
        );
      } else {
        return searchController.searchList.isEmpty && searchController.searchBarController.text.isNotEmpty
            ? Center(
                child: Image.asset(
                'assets/images/search.png',
                height: 220,
              ))
            : GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  childAspectRatio: 0.75,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 6.0,
                  maxCrossAxisExtent: 200,
                ),
                itemBuilder: (context, index) {
                  if (searchController.searchList.isEmpty) {
                    return buildExperienceItems(
                      image: searchController.experiencesEsList[index].image,
                      title: searchController.experiencesEsList[index].title,
                      duration: searchController.experiencesEsList[index].duration,
                      address: searchController.experiencesEsList[index].address,
                      price: searchController.experiencesEsList[index].price,
                      controller: searchController.experiencesEsList[index],
                    );
                  } else {
                    return buildExperienceItems(
                      image: searchController.searchList[index].image,
                      title: searchController.searchList[index].title,
                      duration: searchController.searchList[index].duration,
                      address: searchController.searchList[index].address,
                      price: searchController.searchList[index].price,
                      controller: searchController.searchList[index],
                    );
                  }
                },
                itemCount: searchController.searchList.isEmpty ? searchController.experiencesEsList.length
                    : searchController.searchList.length,
              );
      }
    });
  }
}

Widget buildExperienceItems({
  required String image,
  required String title,
  required String duration,
  required String address,
  required String price,
  required final controller,
}) {
  return SizedBox(
    width: 200,
    height: 330,
    child: Padding(
      padding: const EdgeInsets.only(left: 14, right: 14),
      child: InkWell(
        onTap: () {
          Get.to(() =>
              ExperienceDetailsScreen(
                datum: controller,
              ));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 2.0,
                blurRadius: 0.2,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    image,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.map_outlined,
                          color: Colors.grey,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            address,
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Circular',
                              fontSize: 10,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Circular',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              // The Stars
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 12,
                      color: Color(0xffFFC700),
                    ),
                    Icon(
                      Icons.star,
                      size: 12,
                      color: Color(0xffFFC700),
                    ),
                    Icon(
                      Icons.star,
                      size: 12,
                      color: Color(0xffFFC700),
                    ),
                    Icon(
                      Icons.star,
                      size: 12,
                      color: Color(0xffFFC700),
                    ),
                    Icon(
                      Icons.star,
                      size: 12,
                      color: Color.fromRGBO(255, 199, 0, 0.3),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        '30 Traveller Reviews',
                        style: TextStyle(
                          fontSize: 8,
                          fontFamily: 'Circular',
                          color: Color(0xff676767),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // From $$..
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: Row(
                  children: [
                    Text(
                      'from ',
                      style: TextStyle(
                          color: Color(0xff676767),
                          fontFamily: 'Circular',
                          fontSize: 12),
                    ),
                    Text(
                      '\$${price} ',
                      style: TextStyle(
                        color: Color(0xffFF7A00),
                        fontFamily: 'Circular',
                        fontSize: 16,
                        letterSpacing: -0.04,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
