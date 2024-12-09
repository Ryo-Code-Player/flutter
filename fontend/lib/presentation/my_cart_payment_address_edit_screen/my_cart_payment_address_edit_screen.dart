import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_checkbox_button.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';

import 'controller/my_cart_payment_address_edit_controller.dart';

class MyCartPaymentAddressEditScreen
    extends GetWidget<MyCartPaymentAddressEditController> {
  const MyCartPaymentAddressEditScreen({Key? key}) : super(key: key);

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
                              centerTitle: true,
                              title: AppbarTitle(text: "lbl_payment".tr))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 12),
                              child: Padding(
                                  padding: getPadding(bottom: 5),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: getPadding(
                                                left: 88,
                                                top: 10,
                                                right: 88,
                                                bottom: 10),
                                            decoration: AppDecoration.white,
                                            child: Padding(
                                                padding: getPadding(bottom: 5),
                                                child: AnotherStepper(
                                                    iconHeight: 38,
                                                    iconWidth: 38,
                                                    stepperDirection:
                                                        Axis.horizontal,
                                                    activeIndex: 1,
                                                    barThickness: 1,
                                                    activeBarColor: theme
                                                        .colorScheme.primary,
                                                    inverted: true,
                                                    stepperList: [
                                                      StepperData(
                                                          iconWidget: Container(
                                                              height:
                                                                  getSize(38),
                                                              width:
                                                                  getSize(38),
                                                              padding:
                                                                  getPadding(
                                                                      all: 9),
                                                              decoration: AppDecoration
                                                                  .fillGray200
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .circleBorder19),
                                                              child: CustomImageView(
                                                                  svgPath: ImageConstant
                                                                      .imgLockPrimary,
                                                                  height:
                                                                      getSize(
                                                                          20),
                                                                  width: getSize(
                                                                      20),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)),
                                                          title: StepperText(
                                                              "lbl_my_cart".tr,
                                                              textStyle: theme
                                                                  .textTheme
                                                                  .bodyMedium)),
                                                      StepperData(
                                                          iconWidget: Container(
                                                              height:
                                                                  getSize(38),
                                                              width:
                                                                  getSize(38),
                                                              padding:
                                                                  getPadding(
                                                                      all: 9),
                                                              decoration: AppDecoration
                                                                  .fillGray200
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .circleBorder19),
                                                              child: CustomImageView(
                                                                  svgPath: ImageConstant
                                                                      .imgMenuPrimary20x20,
                                                                  height:
                                                                      getSize(
                                                                          20),
                                                                  width: getSize(
                                                                      20),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)),
                                                          title: StepperText(
                                                              "lbl_payment".tr,
                                                              textStyle: theme
                                                                  .textTheme
                                                                  .bodyMedium))
                                                    ]))),
                                        Container(
                                            margin: getMargin(top: 16),
                                            padding: getPadding(all: 20),
                                            decoration: AppDecoration.white,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "lbl_payment_summary"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleLarge20)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 23),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                                "lbl_sub_total"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge),
                                                            Text("lbl_88_00".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Divider()),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 14),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                                "lbl_discount"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge),
                                                            Text("lbl_4_50".tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeGreen800)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 11),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text("lbl_tax".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge),
                                                            Text("lbl_2_00".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 15),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "lbl_shipping"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyLarge)),
                                                            Text("lbl_3_00".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge)
                                                          ])),
                                                  Obx(() =>
                                                      CustomCheckboxButton(
                                                          text: "lbl_flat_rate"
                                                              .tr,
                                                          value: controller
                                                              .flatRate.value,
                                                          margin: getMargin(
                                                              top: 13),
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 1),
                                                          onChange: (value) {
                                                            controller.flatRate
                                                                .value = value;
                                                          })),
                                                  Obx(() =>
                                                      CustomCheckboxButton(
                                                          text: "lbl_free".tr,
                                                          value: controller
                                                              .freevalue.value,
                                                          margin: getMargin(
                                                              top: 15),
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 1),
                                                          onChange: (value) {
                                                            controller.freevalue
                                                                .value = value;
                                                          })),
                                                  Obx(() =>
                                                      CustomCheckboxButton(
                                                          text:
                                                              "lbl_local_pickup"
                                                                  .tr,
                                                          value: controller
                                                              .localPickup
                                                              .value,
                                                          margin: getMargin(
                                                              top: 15),
                                                          onChange: (value) {
                                                            controller
                                                                .localPickup
                                                                .value = value;
                                                          })),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Divider()),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 18),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "msg_total_payment_amount"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .titleMedium16)),
                                                            Text("lbl_89_00".tr,
                                                                style: CustomTextStyles
                                                                    .titleMedium16)
                                                          ]))
                                                ])),
                                        Container(
                                            height: getVerticalSize(91),
                                            width: double.maxFinite,
                                            margin: getMargin(top: 16),
                                            padding: getPadding(
                                                left: 11,
                                                top: 8,
                                                right: 11,
                                                bottom: 8),
                                            decoration: AppDecoration.white,
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 9,
                                                              bottom: 10),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_my_address"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                7),
                                                                    child: Text(
                                                                        "msg_4140_parker_rd"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodyLarge))
                                                              ]))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgOverflowmenu,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin: getMargin(
                                                          top: 10, right: 7)),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPolygon1,
                                                                height:
                                                                    getVerticalSize(
                                                                        7),
                                                                width:
                                                                    getHorizontalSize(
                                                                        12),
                                                                margin:
                                                                    getMargin(
                                                                        right:
                                                                            12)),
                                                            CustomElevatedButton(
                                                                height:
                                                                    getVerticalSize(
                                                                        40),
                                                                width:
                                                                    getHorizontalSize(
                                                                        87),
                                                                text: "lbl_edit"
                                                                    .tr,
                                                                leftIcon: Container(
                                                                    margin: getMargin(
                                                                        right:
                                                                            8),
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgTicket)),
                                                                buttonStyle:
                                                                    CustomButtonStyles
                                                                        .outlineBlack,
                                                                buttonTextStyle: theme
                                                                    .textTheme
                                                                    .bodyLarge!)
                                                          ]))
                                                ])),
                                        Container(
                                            margin: getMargin(top: 16),
                                            padding: getPadding(all: 20),
                                            decoration: AppDecoration.white,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "msg_choose_your_payment"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleLarge20)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 21),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCheckmarkIndigo800,
                                                            height: getSize(28),
                                                            width: getSize(28)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 5,
                                                                bottom: 2),
                                                            child: Text(
                                                                "lbl_paypal".tr,
                                                                style: CustomTextStyles
                                                                    .titleMedium16)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgContrast,
                                                            height: getSize(24),
                                                            width: getSize(24))
                                                      ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 26),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgIcmoney1,
                                                            height: getSize(28),
                                                            width: getSize(28)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 5,
                                                                bottom: 2),
                                                            child: Text(
                                                                "msg_cash_on_delivery"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleMedium16)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgEye,
                                                            height: getSize(24),
                                                            width: getSize(24))
                                                      ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 26),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgProfile,
                                                            height: getSize(28),
                                                            width: getSize(28)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 5,
                                                                bottom: 2),
                                                            child: Text(
                                                                "lbl_stripe".tr,
                                                                style: CustomTextStyles
                                                                    .titleMedium16)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgContrast,
                                                            height: getSize(24),
                                                            width: getSize(24))
                                                      ]))
                                                ]))
                                      ]))))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                height: getVerticalSize(56),
                text: "lbl_confirm_payment".tr,
                margin: getMargin(left: 20, right: 12, bottom: 24),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryBold,
                onTap: () {
                  onTapConfirmpayment();
                })));
  }

  /// Navigates to the orderConfirmScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the orderConfirmScreen.
  onTapConfirmpayment() {
    Get.toNamed(
      AppRoutes.orderConfirmScreen,
    );
  }
}
