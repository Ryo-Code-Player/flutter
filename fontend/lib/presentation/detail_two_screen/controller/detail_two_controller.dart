import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/presentation/detail_two_screen/models/detail_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the DetailTwoScreen.
///
/// This class manages the state of the DetailTwoScreen, including the
/// current detailTwoModelObj
class DetailTwoController extends GetxController {TextEditingController quantityoneController = TextEditingController();

TextEditingController descriptiononeController = TextEditingController();

Rx<DetailTwoModel> detailTwoModelObj = DetailTwoModel().obs;

Rx<bool> strawberriesval = false.obs;

Rx<bool> oreoCookies = false.obs;

Rx<bool> vanillavalue = false.obs;

Rx<bool> chocolatevalue = false.obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); quantityoneController.dispose(); descriptiononeController.dispose(); } 
onSelected(dynamic value) { for (var element in detailTwoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} detailTwoModelObj.value.dropdownItemList.refresh(); } 
 }
