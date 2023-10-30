import 'package:assessment_test/feature/dashboard/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/theme/theme.dart';
import '../audit/audit_screen.dart';
import '../bar_graph/bar_graph_screen.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          //height: 80,
          width: double.infinity,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: backgroundColor,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 8,
                          height: 2,
                        )
                      ],
                    ),
                  ),
                  label: "",
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.home,
                          color: primaryColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 8,
                          height: 2,
                          color: primaryColor,
                        )
                      ],
                    ),
                  )),
              BottomNavigationBarItem(
                  icon: const Column(
                    children: [
                      Icon(Icons.audiotrack),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 8,
                        height: 2,
                      )
                    ],
                  ),
                  label: "",
                  activeIcon: Column(
                    children: [
                      const Icon(
                        Icons.audiotrack,
                        color: primaryColor,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 8,
                        height: 2,
                        color: primaryColor,
                      )
                    ],
                  )),
              BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Icon(Icons.bar_chart),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 8,
                          height: 2,
                        )
                      ],
                    ),
                  ),
                  label: "",
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Icon(
                          Icons.bar_chart,
                          color: primaryColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 8,
                          height: 2,
                          color: primaryColor,
                        )
                      ],
                    ),
                  )),
              BottomNavigationBarItem(
                  icon: const Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Icon(Icons.account_circle_rounded),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 8,
                          height: 2,
                        )
                      ],
                    ),
                  ),
                  label: "",
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Icon(
                          Icons.account_circle_rounded,
                          color: primaryColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 8,
                          height: 2,
                          color: primaryColor,
                        )
                      ],
                    ),
                  )),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final DashboardController landingPageController =
        Get.put(DashboardController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
      body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: const [
              HomeScreen(),
              AuditScreen(),
              BarGraphScreen(),
              ProfileScreen(),
            ],
          )),
    ));
  }
}
