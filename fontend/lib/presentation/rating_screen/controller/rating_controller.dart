import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/presentation/rating_screen/models/rating_model.dart';import 'package:flutter/material.dart';/// A controller class for the RatingScreen.
///
/// This class manages the state of the RatingScreen, including the
/// current ratingModelObj
class RatingController extends GetxController {TextEditingController thankyouforratiController = TextEditingController();

Rx<RatingModel> ratingModelObj = RatingModel().obs;

Rx<bool> flatRate = false.obs;

Rx<bool> freevalue = false.obs;

Rx<bool> localPickup = false.obs;

@override void onClose() { super.onClose(); thankyouforratiController.dispose(); } 
 }
