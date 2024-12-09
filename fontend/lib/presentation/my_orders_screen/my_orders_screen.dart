import 'controller/my_orders_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';

class MyOrdersScreen extends GetWidget<MyOrdersController> {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(child: Scaffold(backgroundColor: appTheme.gray10002,
        body: SizedBox(width: double.maxFinite,
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(padding: getPadding(top: 21, bottom: 21),
                      decoration: AppDecoration.white,
                      child: CustomAppBar(leadingWidth: getHorizontalSize(44),
                          leading: AppbarImage(
                              svgPath: ImageConstant.imgArrowleft,
                              margin: getMargin(left: 20, bottom: 3),
                              onTap: () {
                                onTapArrowleftone();
                              }),
                          centerTitle: true,
                          title: AppbarTitle(text: "lbl_my_orders".tr))),
                  Expanded(child: SingleChildScrollView(
                      padding: getPadding(top: 164),
                      child: Padding(
                          padding: getPadding(left: 103, right: 103, bottom: 5),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(height: getSize(140),
                                    width: getSize(140),
                                    padding: getPadding(all: 28),
                                    decoration: AppDecoration.fillGray200
                                        .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .circleBorder70),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgBox1,
                                        height: getSize(84),
                                        width: getSize(84),
                                        alignment: Alignment.center)),
                                Padding(padding: getPadding(top: 34),
                                    child: Text("lbl_no_orders_yet".tr,
                                        style: theme.textTheme.headlineMedium)),
                                Container(width: getHorizontalSize(208),
                                    margin: getMargin(top: 14),
                                    child: Text("msg_when_you_place_an".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodyLarge)),
                                CustomElevatedButton(height: getVerticalSize(
                                    56),
                                    text: "lbl_add".tr,
                                    margin: getMargin(left: 15,
                                        top: 39,
                                        right: 14),
                                    buttonStyle: CustomButtonStyles.fillPrimary,
                                    buttonTextStyle: CustomTextStyles
                                        .titleMediumOnPrimaryBold)
                              ]))))
                ]))));
  }


  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
