import 'package:assessment_test/feature/signin/login_screen.dart';
import 'package:get/get.dart';

import '../feature/audit/audit_screen.dart';
import '../feature/bar_graph/bar_graph_screen.dart';
import '../feature/changepassword/changepassword_screen.dart';
import '../feature/dashboard/dashboard.dart';

List<GetPage> routes() => [
      GetPage(
          name: "/",
          page: () => const LoginScreen(),
          transition: Transition.cupertino),
      GetPage(
          name: "/dashboard",
          page: () => const DashboardScreen(),
          transition: Transition.cupertino),
      GetPage(
          name: "/Audit",
          page: () => const AuditScreen(),
          transition: Transition.cupertino),
      GetPage(
          name: "/bargraph",
          page: () => const BarGraphScreen(),
          transition: Transition.cupertino),
      GetPage(
          name: "/changepassword",
          page: () => const ChangePassword(),
          transition: Transition.cupertino),
    ];
