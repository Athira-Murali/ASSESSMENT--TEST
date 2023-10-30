import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../managers/sharedpreferences.dart/sharedpreferences.dart';
import '../../utils/helpers/validation.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();
  final _isLoadingOverlay = false.obs;
  bool get isLoadingOverlay => _isLoadingOverlay.value;

  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  var otpController = TextEditingController().obs;
  final _validationDisplay = false.obs;
  bool get validationDisplay => _validationDisplay.value;

  var isLoading = false.obs;

  bool isObscure = true;

  //password hide
  final _obsecureText = true.obs;
  bool get obsecureText => _obsecureText.value;

  @override
  void onInit() async {
    super.onInit();
  }

  onPasswordVisible() {
    isObscure = !isObscure;
    update();
  }

  String? nameValidator(String value) {
    if (value.isEmpty) {
      return "user-name required";
    } else if (!isValidName(nameController.text)) {
      return invalidName;
    }
    return null;
  }

  String? passwordValidator(String value) {
    if (value.isEmpty || value.length < 7) {
      return "password required";
    }
    return null;
  }

  passwordAndEmailValidation() {
    if (nameController.text.isEmpty && passwordController.text.isEmpty) {
      _validationDisplay.value = true;
      return false;
    } else if (nameController.text.isEmpty &&
        passwordController.text.isNotEmpty) {
      _validationDisplay.value = true;
      return false;
    } else if (nameController.value.text.isNotEmpty &&
        passwordController.value.text.isEmpty) {
      if (!isValidName(nameController.value.text)) {
        return false;
      } else {
        _validationDisplay.value = true;
        return false;
      }
    } else if (nameController.value.text.isNotEmpty &&
        passwordController.value.text.isNotEmpty) {
      if (!isValidName(nameController.value.text)) {
        return false;
      } else {
        return true;
      }
    }
  }

  login(String userName, String password) async {
    if (passwordAndEmailValidation()) {
      try {
        isLoading.value = true;
        final response = await http.post(
          Uri.parse(
              'https://www.petroinfotech.com/PetroHSE/api/Admin/ValidateLogin'),
          headers: {
            'Content-Type': 'application/json', // Set the content type to JSON
          },
          body: jsonEncode({
            "userName": nameController.text,
            "password": passwordController.text,
            "authType": "FORMS",
          }),
        );

        if (response.statusCode == 200) {
          final responseData = jsonDecode(response.body);
          final jbSharedPreferences = JBSharedPreferences();
          int id = responseData['id'];
          String token = responseData['token'];
          await jbSharedPreferences.saveTokensToPrefs(id, token);
          print(response.body);
          Get.toNamed('/dashboard');
        } else {
          print("Login failed with status code: ${response.statusCode}");
          print(response.body);
        }
      } catch (e) {
        print(e.toString());
      } finally {
        isLoading.value = false;
      }
    }
  }
}
