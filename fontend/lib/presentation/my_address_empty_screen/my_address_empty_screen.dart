import 'controller/my_address_empty_controller.dart';import 'package:flutter/material.dart';import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';class MyAddressEmptyScreen extends GetWidget<MyAddressEmptyController> {const MyAddressEmptyScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray10002, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(padding: getPadding(top: 21, bottom: 21), decoration: AppDecoration.white, child: CustomAppBar(leadingWidth: getHorizontalSize(44), leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 20, bottom: 3), onTap: () {onTapArrowleftone();}), centerTitle: true, title: AppbarTitle(text: "lbl_my_address2".tr))), Container(padding: getPadding(top: 147), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getSize(140), width: getSize(140), padding: getPadding(left: 27, top: 28, right: 27, bottom: 28), decoration: AppDecoration.fillGray200.copyWith(borderRadius: BorderRadiusStyle.circleBorder70), child: CustomImageView(svgPath: ImageConstant.imgLocation11, height: getSize(84), width: getSize(84), alignment: Alignment.center)), Padding(padding: getPadding(top: 34), child: Text("lbl_no_address_yet".tr, style: theme.textTheme.headlineMedium)), Container(width: getHorizontalSize(257), margin: getMargin(top: 14), child: Text("msg_add_your_address".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge)), CustomElevatedButton(height: getVerticalSize(56), width: getHorizontalSize(177), text: "lbl_add".tr, margin: getMargin(top: 39, bottom: 5), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryBold, onTap: () {onTapAdd();})]))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] library to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the addNewAddressOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the addNewAddressOneScreen.
onTapAdd() { Get.toNamed(AppRoutes.addNewAddressOneScreen, ); } 
 }
