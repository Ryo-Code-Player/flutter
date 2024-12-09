import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/home_page/home_page.dart';
import 'package:flutterbekeryapp/presentation/my_cart_screen/my_cart_screen.dart';
import 'package:flutterbekeryapp/views/blog.dart';
import 'package:flutterbekeryapp/widgets/custom_bottom_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import '../categories_2_grid_screen/categories_2_grid_screen.dart';
import '../my_cart_one_page/my_cart_one_page.dart';
import '../profile_page/profile_page.dart';
import 'controller/home_container_controller.dart';

// ignore: must_be_immutable
class HomeContainerScreen extends GetWidget<HomeContainerController> {
  HomeContainerScreen({Key? key}) : super(key: key);

  HomeContainerController homeContainerController = Get.put(HomeContainerController());
  List<Widget> screen = [
    HomePage(),
    Categories2GridScreen(),
    MyCartScreen(),
    BlogGridScreen(), 
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return GetBuilder<CustomBottomBarController>(
      init: CustomBottomBarController(),
      builder: (controller) => WillPopScope(
        onWillPop: () async {
          if (controller.selectedIndex == 0) {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                    insetPadding: EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    contentPadding: EdgeInsets.zero,
                    content: Container(
                        width: getHorizontalSize(374),
                        padding: getPadding(all: 30),
                        decoration: AppDecoration.white.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Are you sure want to exit?".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleLarge,
                              ),
                              Padding(
                                  padding: getPadding(top: 32),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: CustomOutlinedButton(
                                                text: "lbl_no".tr,
                                                margin: getMargin(right: 10),
                                                buttonStyle: CustomButtonStyles
                                                    .fillwhite,
                                                onTap: () {
                                                  Get.back();
                                                })),
                                        Expanded(
                                            child: CustomOutlinedButton(
                                                text: "lbl_yes".tr,
                                                margin: getMargin(left: 10),
                                                buttonStyle: CustomButtonStyles
                                                    .fillPrimary,
                                                buttonTextStyle: CustomTextStyles
                                                    .titleMediumOnPrimaryBold,
                                                onTap: () {
                                                  if (controller
                                                          .selectedIndex ==
                                                      0) {
                                                    closeApp();
                                                  } else {
                                                    controller.getIndex(0);
                                                    Get.back();
                                                  }
                                                })),
                                      ]))
                            ])));
              },
            );
          } else {
            controller.getIndex(0);
            // Get.back();
          }
          return false;
        },
        child: ColorfulSafeArea(
            color: appTheme.white,
            child: Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: appTheme.white,
                body: screen[controller.selectedIndex],
                bottomNavigationBar:
                    CustomBottomBar(onChanged: (BottomBarEnum type) {
                  Get.toNamed(getCurrentRoute(type), id: 1);
                }))),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Blog:  // Cập nhật route cho Blog
        return AppRoutes.blogGridScreen;
      default:
        return "/";
    }
  }
}
