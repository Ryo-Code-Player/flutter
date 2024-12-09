import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/detail_page/models/detail_model.dart';

/// A controller class for the DetailPage.
///
/// This class manages the state of the DetailPage, including the
/// current detailModelObj
class DetailController extends GetxController {
  DetailController(this.detailModelObj);

  Rx<DetailModel> detailModelObj;

  Rx<bool> strawberriesval = false.obs;

  Rx<bool> oreoCookies = false.obs;

  Rx<bool> vanillavalue = false.obs;

  Rx<bool> chocolatevalue = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in detailModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    detailModelObj.value.dropdownItemList.refresh();
  }
}
