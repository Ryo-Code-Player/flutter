import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';

import 'controller/my_cards_empty_controller.dart';

class MyCardsEmptyScreen extends GetWidget<MyCardsEmptyController> {
  const MyCardsEmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10002,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 21, bottom: 21),
                          decoration: AppDecoration.white,
                          child: CustomAppBar(
                              leadingWidth: getHorizontalSize(44),
                              leading: AppbarImage(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin: getMargin(left: 20, bottom: 3),
                                  onTap: () {
                                    onTapArrowleftone();
                                  }),
                              centerTitle: true,
                              title: AppbarTitle(text: "lbl_my_cards".tr))),
                      Container(
                          padding: getPadding(top: 167),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(140),
                                    width: getSize(140),
                                    padding: getPadding(
                                        left: 24,
                                        top: 42,
                                        right: 24,
                                        bottom: 42),
                                    decoration: AppDecoration.fillGray200
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder70),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCamera,
                                        height: getVerticalSize(54),
                                        width: getHorizontalSize(89),
                                        alignment: Alignment.center)),
                                Padding(
                                    padding: getPadding(top: 34),
                                    child: Text("lbl_no_card_yet".tr,
                                        style: theme.textTheme.headlineMedium)),
                                Padding(
                                    padding: getPadding(top: 15),
                                    child: Text(
                                        "msg_it_is_a_long_established".tr,
                                        style: theme.textTheme.bodyLarge)),
                                CustomElevatedButton(
                                    height: getVerticalSize(56),
                                    width: getHorizontalSize(178),
                                    text: "lbl_add".tr,
                                    margin: getMargin(top: 30, bottom: 5),
                                    buttonStyle: CustomButtonStyles.fillPrimary,
                                    buttonTextStyle: CustomTextStyles
                                        .titleMediumOnPrimaryBold)
                              ]))
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
