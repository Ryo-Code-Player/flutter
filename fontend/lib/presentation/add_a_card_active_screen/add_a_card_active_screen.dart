import 'controller/add_a_card_active_controller.dart';import 'package:flutter/material.dart';import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';import 'package:flutterbekeryapp/widgets/custom_text_form_field.dart';class AddACardActiveScreen extends GetWidget<AddACardActiveController> {const AddACardActiveScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: appTheme.gray10002, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(padding: getPadding(top: 21, bottom: 21), decoration: AppDecoration.white, child: CustomAppBar(leadingWidth: getHorizontalSize(44), leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 20, bottom: 3), onTap: () {onTapArrowleftone();}), centerTitle: true, title: AppbarTitle(text: "lbl_my_cards".tr))), Container(margin: getMargin(top: 12), padding: getPadding(left: 16, top: 14, right: 16, bottom: 14), decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(318), margin: getMargin(left: 31, right: 32), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_enter_your_card2".tr, style: CustomTextStyles.bodyLargeSFProText_1), TextSpan(text: "lbl_learn_more".tr, style: CustomTextStyles.bodyLargeSFProTextPrimary)]), textAlign: TextAlign.center)), CustomTextFormField(controller: controller.cardnumbersoneController, margin: getMargin(top: 45), hintText: "lbl_1234_5678_9124".tr), Padding(padding: getPadding(top: 22), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomTextFormField(controller: controller.expirationdateController, margin: getMargin(right: 8), hintText: "lbl_06_26".tr)), Expanded(child: CustomTextFormField(controller: controller.cvvoneController, margin: getMargin(left: 8), hintText: "lbl_123".tr, textInputAction: TextInputAction.done))])), CustomElevatedButton(height: getVerticalSize(56), text: "lbl_add_card".tr, margin: getMargin(top: 40, bottom: 5), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryBold, onTap: () {onTapAddcard();})]))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] library to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the myCardsDetailsScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the myCardsDetailsScreen.
onTapAddcard() { Get.toNamed(AppRoutes.myCardsDetailsScreen, ); } 
 }
