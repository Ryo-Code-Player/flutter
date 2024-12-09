import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/presentation/add_new_address_screen/models/add_new_address_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewAddressScreen.
///
/// This class manages the state of the AddNewAddressScreen, including the
/// current addNewAddressModelObj
class AddNewAddressController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController pincodeController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController pincodevalueController = TextEditingController();

Rx<AddNewAddressModel> addNewAddressModelObj = AddNewAddressModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); nameController.dispose(); addressController.dispose(); pincodeController.dispose(); cityController.dispose(); pincodevalueController.dispose(); } 
onSelected(dynamic value) { for (var element in addNewAddressModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewAddressModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in addNewAddressModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewAddressModelObj.value.dropdownItemList1.refresh(); } 
 }
