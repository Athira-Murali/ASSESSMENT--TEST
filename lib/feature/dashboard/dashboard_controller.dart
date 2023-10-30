
import 'package:get/get.dart';


class DashboardController extends GetxController {
   final arguments = Get.arguments;

  var tabIndex = 0.obs;

  @override
  void onInit() async {
      super.onInit();

    if (arguments != null) {
      if (arguments['index'] != null) {
        tabIndex.value = await arguments['index'];
      } else {
        tabIndex.value = 0;
      }
    } else {
      tabIndex.value = 0;
    }
  }

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  
 
}
