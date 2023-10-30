import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class JBSharedPreferences {
  Future<void> saveTokensToPrefs(int id, String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('id', id);
    await prefs.setString('token', token);
    debugPrint('Tokens saved to SharedPreferences');
  }

  Future<int?> getuseridPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('id');
  }

  Future<String?> getTokenFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token') ?? null;
  }
}
