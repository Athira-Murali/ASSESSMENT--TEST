import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../../managers/sharedpreferences.dart/sharedpreferences.dart';

class AuditController extends GetxController {
  @override
  void onInit() async {
    await getbarGraph();
    await getAuditList();
    super.onInit();
  }

  final _responseData = <Map<String, dynamic>>[].obs;
  List<Map<String, dynamic>> get responseData => _responseData;

  final _auditListData = <Map<String, dynamic>>[].obs;
  List<Map<String, dynamic>> get auditListData => _auditListData;

  String formatDate(String dateString) {
    try {
      final originalFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");
      final targetFormat = DateFormat("MMMM dd, yyyy");
      final date = originalFormat.parse(dateString);
      return targetFormat.format(date);
    } catch (e) {
      return "--"; // Handle parsing error, if any
    }
  }

  getbarGraph() async {
    String? token = await JBSharedPreferences().getTokenFromPrefs();
    int? id = await JBSharedPreferences().getuseridPrefs();
    if (id == null || token == null) {
      throw Exception("Token or id not found");
    }

    try {
      final response = await http.get(
        Uri.parse(
          'https://www.petroinfotech.com/PetroHSE/api/Audit/GetDashboardAuditList?UserCompanyCode=1&loggedInUserID=$id',
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
        print("audit controller");
        final responseData = json.decode(response.body);
        print(responseData);
        _responseData.value = List<Map<String, dynamic>>.from(responseData);
      } else {
        throw Exception(
            'Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('API call error: $e');
    }
  }

  getAuditList() async {
    String? token = await JBSharedPreferences().getTokenFromPrefs();
    int? id = await JBSharedPreferences().getuseridPrefs();
    if (id == null || token == null) {
      throw Exception("Token or id not found");
    }

    try {
      final response = await http.get(
        Uri.parse(
          'https://www.petroinfotech.com/PetroHSE/api/Audit/GetAuditList?mode=ALL&status=ALL',
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
        print("audit-list");
        final responseData = json.decode(response.body);
        print(responseData);
        _auditListData.value = List<Map<String, dynamic>>.from(responseData);
      } else {
        throw Exception(
            'Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('API call error: $e');
    }
  }
}
