import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/custom_search_view.dart';

import 'controller/search_controller.dart';

// ignore: must_be_immutable
class SearchScreen extends GetWidget<SearchController> {
   SearchScreen({Key? key}) : super(key: key);
   SearchController searchController = Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
     onWillPop: () async {
      Get.back();
      return true;
     },
     child: ColorfulSafeArea(
         color: appTheme.white,
         child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: appTheme.gray10002,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: getPadding(all: 20),
                            decoration: AppDecoration.white,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgArrowleft,
                                      height: getSize(24),
                                      width: getSize(24),
                                      onTap: () {
                                        onTapImgArrowleftone();
                                      }),
                                  CustomSearchView(
                                      margin: getMargin(top: 16, bottom: 4),
                                      controller: controller.searchController,
                                      hintText: "lbl_search".tr,
                                      prefix: Container(
                                          margin: getMargin(
                                              left: 16,
                                              top: 16,
                                              right: 12,
                                              bottom: 16),
                                          child: CustomImageView(
                                              svgPath: ImageConstant.imgSearch)),
                                      prefixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(56)),
                                      // suffix: Padding(
                                      //     padding: EdgeInsets.only(
                                      //         right: getHorizontalSize(15)),
                                      //     child: IconButton(
                                      //         onPressed: () {
                                      //           controller.searchController
                                      //               .clear();
                                      //         },
                                      //         icon: Icon(Icons.clear,
                                      //             color: Colors.grey.shade600)))
                                  )
                                ])),
                        Container(
                            margin: getMargin(top: 16),
                            padding: getPadding(
                                left: 20, top: 22, right: 20, bottom: 22),
                            decoration: AppDecoration.white,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_recent".tr,
                                            style: theme.textTheme.titleMedium),
                                        Text("lbl_clear_all".tr,
                                            style:
                                                CustomTextStyles.bodyLargePrimary)
                                      ]),
                                  Padding(
                                      padding: getPadding(top: 10),
                                      child: Divider(color: appTheme.blueGray50)),
                                  Padding(
                                      padding: getPadding(top: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding:
                                                    getPadding(top: 2, bottom: 1),
                                                child: Text("lbl_cake".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(24),
                                                width: getSize(24))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 3),
                                                child: Text("lbl_cup_cake".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(24),
                                                width: getSize(24))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding:
                                                    getPadding(top: 2, bottom: 1),
                                                child: Text("lbl_khari".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(24),
                                                width: getSize(24))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding:
                                                    getPadding(top: 2, bottom: 1),
                                                child: Text("lbl_rusk".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(24),
                                                width: getSize(24))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 20, bottom: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding:
                                                    getPadding(top: 2, bottom: 1),
                                                child: Text("lbl_namkeen".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge)),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(24),
                                                width: getSize(24))
                                          ]))
                                ]))
                      ])))),
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapImgArrowleftone() {
    Get.back();
  }
}
