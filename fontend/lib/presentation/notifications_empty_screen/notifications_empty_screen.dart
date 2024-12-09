import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import 'controller/notifications_empty_controller.dart';

class NotificationsEmptyScreen extends GetWidget<NotificationsEmptyController> {
  const NotificationsEmptyScreen({Key? key}) : super(key: key);

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
                                  AppbarTitle(text: "lbl_notifications".tr))),
                      Container(
                          padding: getPadding(top: 208),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: getSize(140),
                                    width: getSize(140),
                                    padding: getPadding(
                                        left: 27,
                                        top: 43,
                                        right: 27,
                                        bottom: 43),
                                    decoration: AppDecoration.fillGray200
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder70),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgMail,
                                        height: getVerticalSize(52),
                                        width: getHorizontalSize(84),
                                        alignment: Alignment.center)),
                                Padding(
                                    padding: getPadding(top: 33),
                                    child: Text("msg_no_notification".tr,
                                        style: theme.textTheme.headlineMedium)),
                                Padding(
                                    padding: getPadding(top: 15, bottom: 5),
                                    child: Text(
                                        "msg_it_is_a_long_established".tr,
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
