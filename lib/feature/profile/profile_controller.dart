import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
  }

  final scrollController1 = ScrollController();
  final scrollController2 = ScrollController();
  final scrollController3 = ScrollController();

  @override
  void onClose() {
    scrollController1.dispose();
    scrollController2.dispose();
    scrollController3.dispose();
    super.onClose();
  }

  logout() {
    Get.toNamed('/login');
    update();
  }
}
