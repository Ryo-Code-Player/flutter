import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/presentation/add_a_card_defualt_screen/models/add_a_card_defualt_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddACardDefualtScreen.
///
/// This class manages the state of the AddACardDefualtScreen, including the
/// current addACardDefualtModelObj
class AddACardDefualtController extends GetxController {TextEditingController cardnumberoneController = TextEditingController();

TextEditingController expirationdateController = TextEditingController();

TextEditingController cvvoneController = TextEditingController();

Rx<AddACardDefualtModel> addACardDefualtModelObj = AddACardDefualtModel().obs;

@override void onClose() { super.onClose(); cardnumberoneController.dispose(); expirationdateController.dispose(); cvvoneController.dispose(); } 
 }
