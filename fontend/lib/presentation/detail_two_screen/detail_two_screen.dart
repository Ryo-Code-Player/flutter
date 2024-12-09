import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_checkbox_button.dart';
import 'package:flutterbekeryapp/widgets/custom_drop_down.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';
import 'package:flutterbekeryapp/widgets/custom_outlined_button.dart';
import 'package:flutterbekeryapp/widgets/custom_text_form_field.dart';

import 'controller/detail_two_controller.dart';

class DetailTwoScreen extends GetWidget<DetailTwoController> {
  const DetailTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray10002,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      SizedBox(
                          height: getVerticalSize(379),
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgBg,
                                height: getVerticalSize(379),
                                width: getHorizontalSize(414),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(left: 16, right: 16),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(36),
                                              leadingWidth:
                                                  getHorizontalSize(52),
                                              leading: AppbarIconbutton(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftBlack900,
                                                  margin: getMargin(left: 16),
                                                  onTap: () {
                                                    onTapArrowleftone();
                                                  }),
                                              actions: [
                                                AppbarIconbutton1(
                                                    svgPath: ImageConstant
                                                        .imgSearchBlack900,
                                                    margin:
                                                        getMargin(left: 16)),
                                                AppbarIconbutton1(
                                                    svgPath: ImageConstant
                                                        .imgLockBlack900,
                                                    margin: getMargin(
                                                        left: 16, right: 16))
                                              ]),
                                          Padding(
                                              padding: getPadding(
                                                  left: 4, top: 271, right: 4),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustomTextFormField(
                                                        width:
                                                            getHorizontalSize(
                                                                68),
                                                        controller: controller
                                                            .quantityoneController,
                                                        hintText: "lbl_1_2".tr,
                                                        contentPadding:
                                                            getPadding(
                                                                left: 20,
                                                                top: 8,
                                                                right: 20,
                                                                bottom: 8),
                                                        borderDecoration:
                                                            TextFormFieldStyleHelper
                                                                .fillBlueGray,
                                                        fillColor: appTheme
                                                            .blueGray50),
                                                    Container(
                                                        margin: getMargin(
                                                            top: 14, bottom: 4),
                                                        padding: getPadding(
                                                            left: 8,
                                                            top: 1,
                                                            right: 8,
                                                            bottom: 1),
                                                        decoration: AppDecoration
                                                            .fillPrimary
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder9),
                                                        child: Text(
                                                            "lbl_sale".tr,
                                                            style: CustomTextStyles
                                                                .bodySmallGray10002))
                                                  ]))
                                        ])))
                          ])),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 16),
                          padding: getPadding(
                              left: 20, top: 21, right: 20, bottom: 21),
                          decoration: AppDecoration.white,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("msg_royal_chocolate2".tr,
                                              style: CustomTextStyles
                                                  .titleLarge20),
                                          Padding(
                                              padding: getPadding(top: 11),
                                              child: Row(children: [
                                                Text("lbl_23_00".tr,
                                                    style: theme
                                                        .textTheme.titleMedium),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 8),
                                                    child: Text("lbl_25_00".tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeGray700_1
                                                            .copyWith(
                                                                decoration:
                                                                    TextDecoration
                                                                        .lineThrough))),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 8),
                                                    child: Text("lbl_12_off".tr,
                                                        style: CustomTextStyles
                                                            .bodyLargePrimary))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 11),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgIcrating,
                                                    height: getSize(14),
                                                    width: getSize(14),
                                                    margin: getMargin(
                                                        top: 1, bottom: 1)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgIcrating,
                                                    height: getSize(14),
                                                    width: getSize(14),
                                                    margin: getMargin(
                                                        left: 2,
                                                        top: 1,
                                                        bottom: 1)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgIcrating,
                                                    height: getSize(14),
                                                    width: getSize(14),
                                                    margin: getMargin(
                                                        left: 2,
                                                        top: 1,
                                                        bottom: 1)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgIcrating,
                                                    height: getSize(14),
                                                    width: getSize(14),
                                                    margin: getMargin(
                                                        left: 2,
                                                        top: 1,
                                                        bottom: 1)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgIcratingAmber500,
                                                    height: getSize(14),
                                                    width: getSize(14),
                                                    margin: getMargin(
                                                        left: 2,
                                                        top: 1,
                                                        bottom: 1)),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 6),
                                                    child: Text(
                                                        "lbl_8_reviews".tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumGray700_2))
                                              ])),
                                          Padding(
                                              padding: getPadding(top: 12),
                                              child: Text("lbl_sku_85_we02".tr,
                                                  style: CustomTextStyles
                                                      .bodyMedium13_1))
                                        ])),
                                CustomImageView(
                                    svgPath: ImageConstant.imgFavorite,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 5, bottom: 93))
                              ])),
                      CustomTextFormField(
                          controller: controller.descriptiononeController,
                          margin: getMargin(top: 20),
                          hintText: "msg_very_nice_product".tr,
                          hintStyle: theme.textTheme.bodyMedium!,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(left: 30, top: 30, bottom: 30),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgIcStar)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(511)),
                          contentPadding:
                              getPadding(top: 247, right: 30, bottom: 247),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillOnPrimary),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 16),
                          padding: getPadding(
                              left: 20, top: 24, right: 20, bottom: 24),
                          decoration: AppDecoration.white,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_toppings".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Obx(() => CustomCheckboxButton(
                                              text: "lbl_strawberries".tr,
                                              value: controller
                                                  .strawberriesval.value,
                                              margin: getMargin(top: 16),
                                              textStyle:
                                                  theme.textTheme.bodyLarge,
                                              onChange: (value) {
                                                controller.strawberriesval
                                                    .value = value;
                                              })),
                                          Obx(() => CustomCheckboxButton(
                                              text: "lbl_oreo_cookies".tr,
                                              value:
                                                  controller.oreoCookies.value,
                                              margin: getMargin(top: 17),
                                              textStyle:
                                                  theme.textTheme.bodyLarge,
                                              onChange: (value) {
                                                controller.oreoCookies.value =
                                                    value;
                                              }))
                                        ])),
                                Padding(
                                    padding: getPadding(right: 66),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_frosting".tr,
                                              style:
                                                  theme.textTheme.titleMedium),
                                          Obx(() => CustomCheckboxButton(
                                              text: "lbl_vanilla".tr,
                                              value:
                                                  controller.vanillavalue.value,
                                              margin: getMargin(top: 16),
                                              textStyle:
                                                  theme.textTheme.bodyLarge,
                                              onChange: (value) {
                                                controller.vanillavalue.value =
                                                    value;
                                              })),
                                          Obx(() => CustomCheckboxButton(
                                              text: "lbl_chocolate".tr,
                                              value: controller
                                                  .chocolatevalue.value,
                                              margin: getMargin(top: 17),
                                              textStyle:
                                                  theme.textTheme.bodyLarge,
                                              onChange: (value) {
                                                controller.chocolatevalue
                                                    .value = value;
                                              }))
                                        ]))
                              ])),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(top: 16),
                          padding: getPadding(
                              left: 16, top: 18, right: 16, bottom: 18),
                          decoration: AppDecoration.white,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("lbl_size".tr,
                                    style: theme.textTheme.titleMedium),
                                CustomDropDown(
                                    icon: Container(
                                        margin: getMargin(left: 30, right: 16),
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdownBlack900)),
                                    margin: getMargin(top: 10, right: 8),
                                    hintText: "lbl_medium".tr,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray700_1,
                                    items: controller.detailTwoModelObj.value
                                        .dropdownItemList.value,
                                    onChanged: (value) {
                                      controller.onSelected(value);
                                    })
                              ])),
                      Container(
                          margin: getMargin(top: 16),
                          padding: getPadding(
                              left: 20, top: 23, right: 20, bottom: 23),
                          decoration: AppDecoration.white,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(right: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_related_product".tr,
                                              style: CustomTextStyles
                                                  .titleLarge20),
                                          Padding(
                                              padding:
                                                  getPadding(top: 3, bottom: 3),
                                              child: Text("lbl_view_all".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: Container(
                                                  margin: getMargin(right: 10),
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 12,
                                                      right: 8,
                                                      bottom: 12),
                                                  decoration: AppDecoration
                                                      .fillGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder16),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgFavorite,
                                                            height: getSize(20),
                                                            width: getSize(20),
                                                            alignment: Alignment
                                                                .centerRight,
                                                            margin: getMargin(
                                                                right: 2)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle2813,
                                                            height:
                                                                getVerticalSize(
                                                                    100),
                                                            width:
                                                                getHorizontalSize(
                                                                    145),
                                                            alignment: Alignment
                                                                .center,
                                                            margin: getMargin(
                                                                top: 16)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 20),
                                                            child: Text(
                                                                "msg_royal_chocolate"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .bodyLarge_1)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10),
                                                            child: Text(
                                                                "lbl_20_00".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 6),
                                                            child: Row(
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          getVerticalSize(
                                                                              17),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              46),
                                                                      child: Stack(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          children: [
                                                                            Align(
                                                                                alignment: Alignment.center,
                                                                                child: Text("lbl_25_00".tr, style: CustomTextStyles.bodyMediumGray700_3)),
                                                                            Align(
                                                                                alignment: Alignment.bottomCenter,
                                                                                child: Container(height: getVerticalSize(1), width: getHorizontalSize(45), margin: getMargin(bottom: 6), decoration: BoxDecoration(color: appTheme.gray700)))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              8),
                                                                      child: Text(
                                                                          "lbl_12_off"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodyMediumGreen700))
                                                                ])),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            16),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      CustomElevatedButton(
                                                                          width: getHorizontalSize(
                                                                              49),
                                                                          text: "lbl_4_31"
                                                                              .tr,
                                                                          rightIcon: Container(
                                                                              margin: getMargin(left: 2),
                                                                              child: CustomImageView(svgPath: ImageConstant.imgStar))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  6,
                                                                              top:
                                                                                  2),
                                                                          child: Text(
                                                                              "lbl_7".tr,
                                                                              style: theme.textTheme.bodySmall))
                                                                    ])))
                                                      ]))),
                                          Expanded(
                                              child: Container(
                                                  margin: getMargin(left: 10),
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 12,
                                                      right: 8,
                                                      bottom: 12),
                                                  decoration: AppDecoration
                                                      .fillGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder16),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgFavorite,
                                                            height: getSize(20),
                                                            width: getSize(20),
                                                            alignment: Alignment
                                                                .centerRight,
                                                            margin: getMargin(
                                                                right: 2)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle28,
                                                            height:
                                                                getVerticalSize(
                                                                    100),
                                                            width:
                                                                getHorizontalSize(
                                                                    145),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        12)),
                                                            alignment: Alignment
                                                                .center,
                                                            margin: getMargin(
                                                                top: 16)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 20),
                                                            child: Text(
                                                                "lbl_strawberry_cake"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .bodyLarge_1)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10),
                                                            child: Text(
                                                                "lbl_22_00".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleSmall)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 6),
                                                            child: Row(
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          getVerticalSize(
                                                                              17),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              46),
                                                                      child: Stack(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          children: [
                                                                            Align(
                                                                                alignment: Alignment.center,
                                                                                child: Text("lbl_25_00".tr, style: CustomTextStyles.bodyMediumGray700_3)),
                                                                            Align(
                                                                                alignment: Alignment.bottomCenter,
                                                                                child: Container(height: getVerticalSize(1), width: getHorizontalSize(45), margin: getMargin(bottom: 6), decoration: BoxDecoration(color: appTheme.gray700)))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              8),
                                                                      child: Text(
                                                                          "lbl_15_off"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodyMediumGreen700))
                                                                ])),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            16),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      CustomElevatedButton(
                                                                          width: getHorizontalSize(
                                                                              49),
                                                                          text: "lbl_4_31"
                                                                              .tr,
                                                                          rightIcon: Container(
                                                                              margin: getMargin(left: 2),
                                                                              child: CustomImageView(svgPath: ImageConstant.imgStar))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  6,
                                                                              top:
                                                                                  2),
                                                                          child: Text(
                                                                              "lbl_7".tr,
                                                                              style: theme.textTheme.bodySmall))
                                                                    ])))
                                                      ])))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 36, bottom: 40),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: CustomOutlinedButton(
                                                  height: getVerticalSize(56),
                                                  text: "lbl_add_to_cart".tr,
                                                  margin: getMargin(right: 10),
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumPrimaryBold)),
                                          Expanded(
                                              child: CustomElevatedButton(
                                                  height: getVerticalSize(56),
                                                  text: "lbl_buy_now".tr,
                                                  margin: getMargin(left: 10),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillPrimary,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleMediumOnPrimaryBold))
                                        ]))
                              ]))
                    ])))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
