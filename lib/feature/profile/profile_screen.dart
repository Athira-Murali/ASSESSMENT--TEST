import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../utils/theme/theme.dart';
import '../../widgets/customapp_bar.dart';
import '../../widgets/logout_list_section.dart';
import '../../widgets/sub_heading.dart';
import 'profile_controller.dart';
import 'widgets/general_settings.dart';
import 'widgets/profile_section.dart';
import 'widgets/support_settings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: backgroundColor,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: CustomAppBar(
                onPress: () {
                  Get.back();
                },
                title: "profile",
              ),
            ),
            body: SafeArea(
              child: Container(
                decoration: const BoxDecoration(
                  color: backgroundColor,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: SingleChildScrollView(
                  controller: controller.scrollController1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ProfileSection(
                        controller: controller,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: SubHeading(title: "General"),
                      ),
                      GeneralSettings(controller: controller),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: SubHeading(title: "Support"),
                      ),
                      SupportSettings(controller: controller),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                          onTap: () {
                            controller.logout();
                          },
                          child: LogoutListSection(controller: controller)),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
