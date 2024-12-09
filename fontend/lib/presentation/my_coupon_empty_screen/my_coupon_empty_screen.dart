import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import 'controller/my_coupon_empty_controller.dart';

class MyCouponEmptyScreen extends GetWidget<MyCouponEmptyController> {
  const MyCouponEmptyScreen({Key? key}) : super(key: key);

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
                              title: AppbarTitle(text: "lbl_my_coupon".tr))),
                      Container(
                          margin: getMargin(top: 8),
                          padding: getPadding(
                              left: 72, top: 280, right: 72, bottom: 280),
                          decoration: AppDecoration.white,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroup,
                                    height: getVerticalSize(92),
                                    width: getHorizontalSize(128)),
                                Padding(
                                    padding: getPadding(top: 37),
                                    child: Text("msg_no_coupon_available".tr,
                                        style: CustomTextStyles.titleLarge20)),
                                Container(
                                    width: getHorizontalSize(271),
                                    margin: getMargin(top: 12),
                                    child: Text("msg_but_don_t_worry".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodyLarge))
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
