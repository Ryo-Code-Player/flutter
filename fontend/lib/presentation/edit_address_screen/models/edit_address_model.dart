import 'package:flutterbekeryapp/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [edit_address_screen],
import 'package:get/get.dart';

/// and is typically used to hold data that is passed between different parts of the application.
class EditAddressModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "New Mexico",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Mexico",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "US",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "In",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);
}
