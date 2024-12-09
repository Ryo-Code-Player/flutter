import 'package:flutter/material.dart';

/// A controller class for the DetailTabContainerScreen.
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/detail_tab_container_screen/models/detail_tab_container_model.dart';

///
/// This class manages the state of the DetailTabContainerScreen, including the
/// current detailTabContainerModelObj
class DetailTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController quantityoneController = TextEditingController();

  Rx<DetailTabContainerModel> detailTabContainerModelObj =
      DetailTabContainerModel().obs;
  SelectionPopupModel? selectedDropDownValue;
  int currentPage = 0;
  int currentTabId = 1;
  int currentTopping = 1;
  int currentFrosting = 1;
  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  Rx<DetailTabContainerModel> productDetailModelObj = DetailTabContainerModel().obs;


  void setCurrentPage(int value) {
    currentPage = value;
    update();
  }

  void setCurrentTab(int i) {
    currentTabId = i;
    update();
  }

  void setCurrentToppings(int i) {
    currentTopping = i;
    update();
  }
  void setCurrentFrosting(int i) {
    currentFrosting = i;
    update();
  }

  onSelected(dynamic value) {
    for (var element in productDetailModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    productDetailModelObj.value.dropdownItemList.refresh();
  }

}
