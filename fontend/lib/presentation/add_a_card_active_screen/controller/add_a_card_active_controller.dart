import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/presentation/add_a_card_active_screen/models/add_a_card_active_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddACardActiveScreen.
///
/// This class manages the state of the AddACardActiveScreen, including the
/// current addACardActiveModelObj
class AddACardActiveController extends GetxController {TextEditingController cardnumbersoneController = TextEditingController();

TextEditingController expirationdateController = TextEditingController();

TextEditingController cvvoneController = TextEditingController();

Rx<AddACardActiveModel> addACardActiveModelObj = AddACardActiveModel().obs;

@override void onClose() { super.onClose(); cardnumbersoneController.dispose(); expirationdateController.dispose(); cvvoneController.dispose(); } 
 }
