import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/home_page/home_page.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_bottom_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';

import 'controller/wishlist_empty_controller.dart';

class WishlistEmptyScreen extends GetWidget<WishlistEmptyController> {
  const WishlistEmptyScreen({Key? key}) : super(key: key);

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
                              centerTitle: true,
                              title: AppbarTitle(text: "lbl_wishlist".tr))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 194),
                              child: Padding(
                                  padding: getPadding(
                                      left: 64, right: 64, bottom: 5),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getSize(140),
                                            width: getSize(140),
                                            padding: getPadding(all: 28),
                                            decoration: AppDecoration
                                                .fillGray200
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder70),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgFavorite1,
                                                height: getSize(84),
                                                width: getSize(84),
                                                alignment: Alignment.center)),
                                        Padding(
                                            padding: getPadding(top: 32),
                                            child: Text(
                                                "msg_no_favourites_yet".tr,
                                                style: theme
                                                    .textTheme.titleLarge)),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Text(
                                                "msg_explore_more_and".tr,
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        CustomElevatedButton(
                                            height: getVerticalSize(56),
                                            width: getHorizontalSize(177),
                                            text: "lbl_add_favourites".tr,
                                            margin: getMargin(top: 30),
                                            buttonStyle:
                                                CustomButtonStyles.fillPrimary,
                                            buttonTextStyle: CustomTextStyles
                                                .titleMediumOnPrimaryBold,
                                            onTap: () {
                                              onTapAddfavourites();
                                            })
                                      ]))))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeContainerScreen.
  onTapAddfavourites() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
