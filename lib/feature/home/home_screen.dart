import 'package:assessment_test/feature/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          final responseData = controller.responseData;
          return Scaffold(
            body: Column(
              children: [
                Obx(
                  () => Expanded(
                    child: ListView.builder(
                      itemCount: responseData.length,
                      itemBuilder: (context, index) {
                        final item = responseData[index];
                        return ListTile(
                          title: Text(item['Item']),
                          subtitle: Text('Count: ${item['Count']}'),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
