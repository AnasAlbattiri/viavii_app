import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viavii_app/data/model/search/search_details_model.dart';
import 'package:viavii_app/data/model/search/search_es_model.dart';
import 'package:viavii_app/data/web_services/search_service.dart';
import '../../data/model/auth/user_info_model.dart';

class MySearchController extends GetxController {

  // Variables
  var experiencesEsList = <Datum>[].obs;
  var isLoading = true.obs;
  var searchList = <Datum>[].obs;
  TextEditingController searchBarController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    getSearchExperiencesES();
  }

  void getSearchExperiencesES() async {
    try {
      isLoading(true);

      SearchEsModel experiencesDetails = await SearchService.getSearchExperiencesES();
      if (experiencesDetails != null) {
        experiencesEsList.addAll(experiencesDetails.data);
      }
    } catch (e) {
      print('Error fetching search results: $e');
    } finally {
      isLoading(false);
    }
  }

  // Search bar logic

  void addSearchToList(String searchUser){
    searchList.value = experiencesEsList.where((search) {
      var searchTitle = search.title.toLowerCase();
      var searchPrice = search.price.toString().toLowerCase();
      return searchTitle.contains(searchUser.toLowerCase()) || searchPrice.toString().contains(searchUser.toLowerCase());
    }).toList();
    update();
  }

  void clearSearch(){
    searchBarController.clear();
    addSearchToList('');
  }
  // void getSearchExperiencesDetails() async {
  //   try {
  //     isLoading(true);
  //
  //     SearchDetailsModel experiencesDetails = await SearchService.getSearchExperiencesDetails();
  //     if (experiencesDetails != null) {
  //       experiencesDetailsList.addAll(experiencesDetails.data);
  //     }
  //   } catch (e) {
  //     print('Error fetching search results: $e');
  //   } finally {
  //     isLoading(false);
  //   }
  // }
}
