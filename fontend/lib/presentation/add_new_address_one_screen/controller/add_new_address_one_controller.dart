import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/presentation/add_new_address_one_screen/models/add_new_address_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewAddressOneScreen.
///
/// This class manages the state of the AddNewAddressOneScreen, including the
/// current addNewAddressOneModelObj
class AddNewAddressOneController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController pincodeController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController pincodevalueController = TextEditingController();

Rx<AddNewAddressOneModel> addNewAddressOneModelObj = AddNewAddressOneModel().obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); nameController.dispose(); addressController.dispose(); pincodeController.dispose(); cityController.dispose(); pincodevalueController.dispose(); } 
onSelected(dynamic value) { for (var element in addNewAddressOneModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewAddressOneModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in addNewAddressOneModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewAddressOneModelObj.value.dropdownItemList1.refresh(); } 
 }
