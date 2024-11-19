import 'package:dio/dio.dart' as dio;
import 'package:facebookhiddenintrest/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntrestController extends GetxController {
  final TextEditingController intrestController = TextEditingController();
  final TextEditingController tokenController = TextEditingController();
  final RxList<Interest> intrest = <Interest>[].obs;

  void fetchAdInterests() async {
    print(intrestController.text);
    try {
      // Initialize Dio
      dio.Dio dioInstance = dio.Dio();

      // Define the URL
      String url = 'https://graph.facebook.com/v17.0/search';

      // Define query parameters
      Map<String, dynamic> queryParams = {
        'type': 'adinterest',
        'q': intrestController.text ?? 'clothes',
        'limit': 10000,
        'access_token': tokenController.text,
      };

      // Send GET request
      dio.Response response = await dioInstance.get(url, queryParameters: queryParams);

      // Handle the response
      if (response.statusCode == 200) {
        // Check if 'data' exists in the response and is a list
        if (response.data['data'] != null && response.data['data'] is List) {
          // Convert the response data to a list of Interest objects
          List<dynamic> interestsJson = response.data['data'];
          List<Interest> interests = interestsJson.map((json) => Interest.fromJson(json)).toList();
          intrest.assignAll(interests);
          print(intrest);
        } else {
          print('Error: Unexpected response format');
        }
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception: $e');
    }
  }
}
