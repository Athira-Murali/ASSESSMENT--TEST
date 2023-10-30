import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../managers/sharedpreferences.dart/sharedpreferences.dart';
import '../../model/home_model.dart';

class HomeController extends GetxController {
  @override
  void onInit() async {
    await getHomePageData();
    super.onInit();
  }

  final _responseData = <Map<String, dynamic>>[].obs;
  List<Map<String, dynamic>> get responseData => _responseData;

  getHomePageData() async {
    String? token = await JBSharedPreferences().getTokenFromPrefs();
    int? id = await JBSharedPreferences().getuseridPrefs();
    if (id == null || token == null) {
      throw Exception("Token or id not found");
    }

    try {
      final response = await http.get(
        Uri.parse(
          'https://www.petroinfotech.com/PetroHSE/api/Dashboard/GetHomePage?companyCode=1&userId=$id',
        ),
        headers: {
          'Authorization': 'Bearer $token',
          'CompanyCode': '1',
          'UserId': id.toString(),
          'appType': 'MOB',
          'content-type': 'application/json',
          'accept': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        print(responseData);
      } else {
        throw Exception(
            'Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('API call error: $e');
    }
  }
}
