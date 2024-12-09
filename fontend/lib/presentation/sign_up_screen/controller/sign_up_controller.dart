import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/sign_up_screen/models/sign_up_model.dart';

///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController nameoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phonenumberoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> iacceptedtermsp = false.obs;
  bool cheak = false;


}
