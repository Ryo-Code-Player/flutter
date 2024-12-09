import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/presentation/edit_address_screen/models/edit_address_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditAddressScreen.
///
/// This class manages the state of the EditAddressScreen, including the
/// current editAddressModelObj
class EditAddressController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController pincodeController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<EditAddressModel> editAddressModelObj = EditAddressModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); nameController.dispose(); addressController.dispose(); pincodeController.dispose(); cityController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in editAddressModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} editAddressModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in editAddressModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} editAddressModelObj.value.dropdownItemList1.refresh(); } 
 }
