import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_checkbox_button.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';
import 'package:flutterbekeryapp/widgets/custom_icon_button.dart';
import 'package:flutterbekeryapp/widgets/custom_outlined_button.dart';
import 'package:flutterbekeryapp/widgets/custom_text_form_field.dart';

import 'controller/rating_controller.dart';

class RatingScreen extends GetWidget<RatingController> {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray10002,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 22, bottom: 22),
                          decoration: AppDecoration.white,
                          child: CustomAppBar(
                              leadingWidth: getHorizontalSize(44),
                              leading: AppbarImage(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin:
                                      getMargin(left: 20, top: 1, bottom: 1),
                                  onTap: () {
                                    onTapArrowleftone();
                                  }),
                              centerTitle: true,
                              title:
                                  AppbarTitle(text: "lbl_order_details".tr))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 12),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: getPadding(all: 20),
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 7, bottom: 6),
                                                        child: Text(
                                                            "msg_order_id_576404"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .titleMedium16)),
                                                    CustomElevatedButton(
                                                        height:
                                                            getVerticalSize(34),
                                                        width:
                                                            getHorizontalSize(
                                                                87),
                                                        text:
                                                            "lbl_delivered".tr,
                                                        buttonStyle:
                                                            CustomButtonStyles
                                                                .fillLightGreenTL17,
                                                        buttonTextStyle:
                                                            CustomTextStyles
                                                                .titleMediumGreenA700)
                                                  ]),
                                              Padding(
                                                  padding: getPadding(top: 6),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            height: getSize(10),
                                                            width: getSize(10),
                                                            margin: getMargin(
                                                                top: 3,
                                                                bottom: 6),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(5)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8),
                                                            child: Text(
                                                                "msg_order_at_6_35_pm"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge))
                                                      ])),
                                              CustomOutlinedButton(
                                                  height: getVerticalSize(40),
                                                  width: getHorizontalSize(166),
                                                  text:
                                                      "msg_download_invoice".tr,
                                                  margin: getMargin(top: 20))
                                            ])),
                                    Container(
                                        width: double.maxFinite,
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
                                                  padding: getPadding(top: 2),
                                                  child: Text("lbl_item_1".tr,
                                                      style: CustomTextStyles
                                                          .titleMedium16)),
                                              Padding(
                                                  padding: getPadding(top: 11),
                                                  child: Row(children: [
                                                    Container(
                                                        height: getSize(95),
                                                        width: getSize(95),
                                                        padding: getPadding(
                                                            left: 22,
                                                            top: 10,
                                                            right: 22,
                                                            bottom: 10),
                                                        decoration: AppDecoration
                                                            .fillGray100
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder16),
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle37614,
                                                            height:
                                                                getVerticalSize(
                                                                    75),
                                                            width:
                                                                getHorizontalSize(
                                                                    51),
                                                            alignment: Alignment
                                                                .center)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 16,
                                                            top: 7,
                                                            bottom: 7),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_rainbow_cupcake"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .titleMedium16),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              13),
                                                                  child: RichText(
                                                                      text: TextSpan(children: [
                                                                        TextSpan(
                                                                            text:
                                                                                "lbl_quantity2".tr,
                                                                            style: CustomTextStyles.bodyMediumGray700_1),
                                                                        TextSpan(
                                                                            text:
                                                                                "lbl_12".tr,
                                                                            style: theme.textTheme.bodyMedium)
                                                                      ]),
                                                                      textAlign: TextAlign.left)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              12),
                                                                  child: Text(
                                                                      "lbl_15_00"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodyMedium))
                                                            ]))
                                                  ]))
                                            ])),
                                    Container(
                                        margin: getMargin(top: 16),
                                        padding: getPadding(
                                            left: 20,
                                            top: 22,
                                            right: 20,
                                            bottom: 22),
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_customer".tr,
                                                  style: CustomTextStyles
                                                      .titleLarge20),
                                              Padding(
                                                  padding: getPadding(top: 19),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse22555x55,
                                                        height: getSize(55),
                                                        width: getSize(55),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    27))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 14,
                                                            top: 17,
                                                            bottom: 17),
                                                        child: Text(
                                                            "lbl_ronald_richards2"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .titleMedium16)),
                                                    Spacer(),
                                                    CustomIconButton(
                                                        height: 44,
                                                        width: 44,
                                                        margin: getMargin(
                                                            top: 5, bottom: 5),
                                                        padding:
                                                            getPadding(all: 10),
                                                        decoration:
                                                            IconButtonStyleHelper
                                                                .fillPrimary,
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCallOnprimary))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(top: 19),
                                                  child: Text(
                                                      "msg_shipping_address".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeGray700_1)),
                                              Padding(
                                                  padding: getPadding(top: 9),
                                                  child: Text(
                                                      "msg_4140_parker_rd".tr,
                                                      style: theme.textTheme
                                                          .bodyLarge)),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Divider(
                                                      color:
                                                          appTheme.blueGray50)),
                                              Padding(
                                                  padding: getPadding(top: 19),
                                                  child: Text(
                                                      "msg_billing_address".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeGray700_1)),
                                              Padding(
                                                  padding: getPadding(top: 9),
                                                  child: Text(
                                                      "msg_4140_parker_rd".tr,
                                                      style: theme.textTheme
                                                          .bodyLarge)),
                                              Padding(
                                                  padding: getPadding(top: 16),
                                                  child: Divider(
                                                      color:
                                                          appTheme.blueGray50)),
                                              Padding(
                                                  padding: getPadding(top: 18),
                                                  child: Text(
                                                      "lbl_order_note".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeGray700_1)),
                                              Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Text(
                                                      "msg_i_need_the_best".tr,
                                                      style: theme.textTheme
                                                          .bodyLarge)),
                                              Padding(
                                                  padding: getPadding(top: 20),
                                                  child: Text(
                                                      "lbl_cancel_order".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumRed50001_1))
                                            ])),
                                    Container(
                                        margin: getMargin(top: 16),
                                        padding: getPadding(
                                            left: 8,
                                            top: 24,
                                            right: 8,
                                            bottom: 24),
                                        decoration: AppDecoration.white,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 12),
                                                      child: Text(
                                                          "lbl_payment_summary"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleLarge20))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 23,
                                                      right: 12),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("lbl_sub_total".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge),
                                                        Text("lbl_88_00".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      indent:
                                                          getHorizontalSize(12),
                                                      endIndent:
                                                          getHorizontalSize(
                                                              12))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 14,
                                                      right: 12),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("lbl_discount".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge),
                                                        Text("lbl_4_50".tr,
                                                            style: CustomTextStyles
                                                                .bodyLargeGreen800)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 11,
                                                      right: 12),
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
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 15,
                                                      right: 12),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
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
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Obx(() =>
                                                      CustomCheckboxButton(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          text: "lbl_flat_rate"
                                                              .tr,
                                                          value: controller
                                                              .flatRate.value,
                                                          margin: getMargin(
                                                              left: 12,
                                                              top: 13),
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 1),
                                                          onChange: (value) {
                                                            controller.flatRate
                                                                .value = value;
                                                          }))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Obx(() =>
                                                      CustomCheckboxButton(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          text: "lbl_free".tr,
                                                          value: controller
                                                              .freevalue.value,
                                                          margin: getMargin(
                                                              left: 12,
                                                              top: 15),
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 1),
                                                          onChange: (value) {
                                                            controller.freevalue
                                                                .value = value;
                                                          }))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Obx(() =>
                                                      CustomCheckboxButton(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          text:
                                                              "lbl_local_pickup"
                                                                  .tr,
                                                          value: controller
                                                              .localPickup
                                                              .value,
                                                          margin: getMargin(
                                                              left: 12,
                                                              top: 15),
                                                          onChange: (value) {
                                                            controller
                                                                .localPickup
                                                                .value = value;
                                                          }))),
                                              Padding(
                                                  padding: getPadding(top: 13),
                                                  child: Divider(
                                                      indent:
                                                          getHorizontalSize(12),
                                                      endIndent:
                                                          getHorizontalSize(
                                                              12))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 18,
                                                      right: 12),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "msg_total_payment_amount"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleMedium16)),
                                                        Text("lbl_89_00".tr,
                                                            style: CustomTextStyles
                                                                .titleMedium16)
                                                      ])),
                                              CustomTextFormField(
                                                  controller: controller
                                                      .thankyouforratiController,
                                                  margin: getMargin(
                                                      top: 18, bottom: 9),
                                                  hintText:
                                                      "msg_thank_you_for_rating"
                                                          .tr,
                                                  hintStyle: CustomTextStyles
                                                      .titleMediumPrimary16,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  contentPadding: getPadding(
                                                      left: 16,
                                                      top: 12,
                                                      right: 16,
                                                      bottom: 12),
                                                  borderDecoration:
                                                      TextFormFieldStyleHelper
                                                          .fillGrayTL8,
                                                  fillColor: appTheme.gray200)
                                            ]))
                                  ])))
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
