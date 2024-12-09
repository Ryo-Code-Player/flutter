
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


/// A controller class for the FilterScreen.
///
/// This class manages the state of the FilterScreen, including the
/// current filterModelObj
class FilterController extends GetxController {
  List tags = [
    "Best Seller",
    "Byu 1 Free 1",
    "Favorite",
    "Recommended",
    "Free Ship"
  ];
  List<String> selectedSortby = [];
  int currentTab = 0;
  var option = 0;
  List<String> sortBy = [
    "Popular",
    "Most Recent",
    "Price High",
    "iooio",
    "utui",
    "gutu",
  ];
  int currentFilterCategory = 1;
  onChageOptionValue(int index) {
    option = index;
    update();
  }

  void setCurrentTab(int index) {
    currentTab = index;
    update();
  }

  void setcurrentFilterCategory(id) {
    currentFilterCategory = id;
    update();
  }

}
