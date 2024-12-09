import 'controller/login_with_error_controller.dart';import 'package:flutter/material.dart';import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/core/utils/validation_functions.dart';import 'package:flutterbekeryapp/widgets/custom_checkbox_button.dart';import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';import 'package:flutterbekeryapp/widgets/custom_floating_text_field.dart';
// ignore_for_file: must_be_immutable
class LoginWithErrorScreen extends GetWidget<LoginWithErrorController> {LoginWithErrorScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: theme.colorScheme.onPrimary, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: getPadding(left: 16, top: 40, right: 16, bottom: 40), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(top: 6), child: Text("lbl_log_in".tr, style: theme.textTheme.headlineMedium)), Padding(padding: getPadding(top: 13), child: Text("msg_hello_welcome_back".tr, style: CustomTextStyles.bodyLargeGray700_1)), Padding(padding: getPadding(top: 15), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomFloatingTextField(controller: controller.userNameController, labelText: "msg_username_or_email2".tr, labelStyle: theme.textTheme.bodyLarge!, hintText: "msg_username_or_email2".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "Please enter valid email";} return null;}), Padding(padding: getPadding(top: 8), child: Text("msg_please_enter_valid".tr, style: CustomTextStyles.bodyLargeRed50001))])), Padding(padding: getPadding(top: 13), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomFloatingTextField(controller: controller.emailController, labelText: "lbl_password".tr, labelStyle: theme.textTheme.bodyLarge!, hintText: "lbl_password".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, obscureText: true, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "Please enter valid password";} return null;}), Padding(padding: getPadding(top: 8), child: Text("msg_please_enter_valid".tr, style: CustomTextStyles.bodyLargeRed50001))])), Padding(padding: getPadding(top: 16, right: 8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Obx(() => CustomCheckboxButton(text: "lbl_remember_me".tr, value: controller.englishName.value, margin: getMargin(bottom: 1), textStyle: theme.textTheme.bodyLarge, onChange: (value) {controller.englishName.value = value;})), GestureDetector(onTap: () {onTapTxtForgotpassword();}, child: Text("msg_forgot_password".tr, style: theme.textTheme.bodyLarge))])), CustomElevatedButton(height: getVerticalSize(56), text: "lbl_log_in".tr, margin: getMargin(top: 40), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryBold, onTap: () {onTapLogin();}), Spacer(), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapTxtDonthaveaaccount();}, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_don_t_have_a_account2".tr, style: theme.textTheme.bodyLarge), TextSpan(text: "lbl_sign_up".tr, style: CustomTextStyles.titleMediumPrimary)]), textAlign: TextAlign.left)))]))))); } 
/// Navigates to the forgotPasswordScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the forgotPasswordScreen.
onTapTxtForgotpassword() { Get.toNamed(AppRoutes.forgotPasswordScreen, ); } 
/// Navigates to the homeContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the homeContainerScreen.
onTapLogin() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
/// Navigates to the signUpScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the signUpScreen.
onTapTxtDonthaveaaccount() { Get.toNamed(AppRoutes.signUpScreen, ); } 
 }
