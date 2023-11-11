import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:viavii_app/utils/strings.dart';
import '../model/search/search_details_model.dart';
import '../model/search/search_es_model.dart';

class SearchService {
  static Future<SearchEsModel> getSearchExperiencesES() async {
    final headers = {
      'Content-Type': 'application/json',
      'ptoken': 'bUuXIU8ZnBhLRnXU4X5qqBQRbd1Nof',
    };

    final response = await http.get(
      Uri.parse('$baseUrl/experience/search-es?query=amman&category=outdoorsy&attribute=with%20locals'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return searchEsModelFromJson(jsonData);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  static Future<SearchDetailsModel> getSearchExperiencesDetails() async {
    final headers = {
      'Content-Type': 'application/json',
      'ptoken': 'bUuXIU8ZnBhLRnXU4X5qqBQRbd1Nof',
    };

    final response = await http.get(
      Uri.parse('$baseUrl/experience/search-es?query=amman&category=outdoorsy&attribute=with%20locals'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return searchDetailsModelFromJson(jsonData);
    } else {
      throw Exception('Failed to fetch data');
    }
  }
}