import '../model/profile_listitem.dart';

class GeneralListItem {
  List<GeneralListModel> generalList = [
    GeneralListModel(stringText: "Location", routeLink: ""),
    GeneralListModel(stringText: "Bar-Graph", routeLink: "/bargraph"),
    GeneralListModel(stringText: "Scan QR Code", routeLink: ""),
    GeneralListModel(
        stringText: "Change password", routeLink: "/changepassword"),
  ];
}

class SupportListItem {
  List<GeneralListModel> supportListItem = [
    GeneralListModel(
        icon: '', stringText: "Need help? Let's chat", routeLink: ""),
    GeneralListModel(
        icon: '', stringText: "Protection Guarantee", routeLink: ""),
    GeneralListModel(icon: "", stringText: "Privacy Policy", routeLink: ""),
  ];
}
