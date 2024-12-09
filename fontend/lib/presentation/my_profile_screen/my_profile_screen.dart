import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image_1.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import 'controller/my_profile_controller.dart';



class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
 MyProfileController myProfileController = Get.put(MyProfileController());
 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return  WillPopScope(
   onWillPop: () async {
    Get.back();
    return true;
   },
   child: ColorfulSafeArea(
       color: appTheme.white,
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
                             title: AppbarTitle(text: "lbl_my_profile".tr),
                             actions: [
                              AppbarImage1(
                                  svgPath: ImageConstant.imgTicket,
                                  margin: getMargin(
                                      left: 20, top: 2, right: 20, bottom: 5),
                                  onTap: () {
                                   onTapTicketone();
                                  })
                             ])),
                     Expanded(
                       child: Container(
                           margin: getMargin(top: 12),
                           padding: getPadding(
                               left: 20, top: 24, right: 20, bottom: 24),
                           decoration: AppDecoration.white,
                           child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse225,
                                    height: getSize(100),
                                    width: getSize(100),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(50)),
                                    alignment: Alignment.center),
                                Padding(
                                    padding: getPadding(top: 20),
                                    child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                         CustomImageView(
                                             svgPath: ImageConstant.imgUser,
                                             height: getSize(24),
                                             width: getSize(24),
                                             margin: getMargin(bottom: 28)),
                                         Padding(
                                             padding: getPadding(left: 16),
                                             child: Column(
                                                 crossAxisAlignment:
                                                 CrossAxisAlignment.start,
                                                 mainAxisAlignment:
                                                 MainAxisAlignment.start,
                                                 children: [
                                                  Text("lbl_name".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeGray700_1),
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 11),
                                                      child: Text(
                                                          "lbl_ronald_richards2".tr,
                                                          style: theme
                                                              .textTheme
                                                              .bodyLarge))
                                                 ]))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 21),
                                    child: Divider(color: appTheme.blueGray50)),
                                Padding(
                                    padding: getPadding(top: 20),
                                    child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                         CustomImageView(
                                             svgPath: ImageConstant
                                                 .imgCheckmarkBlack900,
                                             height: getSize(24),
                                             width: getSize(24),
                                             margin: getMargin(bottom: 29)),
                                         Padding(
                                             padding: getPadding(left: 16),
                                             child: Column(
                                                 crossAxisAlignment:
                                                 CrossAxisAlignment.start,
                                                 mainAxisAlignment:
                                                 MainAxisAlignment.start,
                                                 children: [
                                                  Text("lbl_email".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeGray700_1),
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 12),
                                                      child: Text(
                                                          "msg_ronaldrichards_gmail_com".tr,
                                                          style: theme
                                                              .textTheme
                                                              .bodyLarge))
                                                 ]))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 20),
                                    child: Divider(color: appTheme.blueGray50)),
                                Padding(
                                    padding: getPadding(top: 20, bottom: 5),
                                    child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                         CustomImageView(
                                             svgPath: ImageConstant.imgCall,
                                             height: getSize(24),
                                             width: getSize(24),
                                             margin: getMargin(bottom: 29)),
                                         Padding(
                                             padding: getPadding(left: 16),
                                             child: Column(
                                                 crossAxisAlignment:
                                                 CrossAxisAlignment.start,
                                                 mainAxisAlignment:
                                                 MainAxisAlignment.start,
                                                 children: [
                                                  Text("lbl_phone_number".tr,
                                                      style: CustomTextStyles
                                                          .bodyLargeGray700_1),
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 12),
                                                      child: Text(
                                                          "lbl_219_555_0114".tr,
                                                          style: theme
                                                              .textTheme
                                                              .bodyLarge))
                                                 ]))
                                        ]))
                               ])),
                     )
                    ])))),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }

 onTapTicketone() {
  Get.toNamed(
   AppRoutes.editProfileScreen,
  );
 }
}




