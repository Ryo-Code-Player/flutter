import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import 'controller/settings_controller.dart';




class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
 SettingsController controller = Get.put(SettingsController());
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
           backgroundColor: appTheme.gray10002,
           appBar: CustomAppBar(
               height: getVerticalSize(73),
               leadingWidth: getHorizontalSize(44),
               leading: AppbarImage(
                   svgPath: ImageConstant.imgArrowleft,
                   margin: getMargin(left: 20, top: 24, bottom: 25),
                   onTap: () {
                    onTapArrowleftone();
                   }),
               centerTitle: true,
               title: AppbarTitle(text: "lbl_settings".tr),
               styleType: Style.bgFill),
           body: Container(
               width: double.maxFinite,
               margin: getMargin(top: 12),
               padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
               decoration: AppDecoration.white,
               child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     getProfileOption((){  onTapProfile();}, ImageConstant.imgIcnotificationbing, "lbl_notification".tr),
                     SizedBox(height: getVerticalSize(18),),
                     getProfileOption((){ Get.toNamed(AppRoutes.privacypolicyScreen);}, ImageConstant.imgFileBlack90024x24, "lbl_privacy_policy".tr),
                     SizedBox(height: getVerticalSize(18),),
                     getProfileOption((){  Get.toNamed(AppRoutes.securityScreen);}, ImageConstant.imgSicurityIcon, "lbl_security".tr),
                   ])))),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }

 onTapProfile() {
  Get.toNamed(
   AppRoutes.notificationsScreen,
  );
 }



 Widget getProfileOption(function,icon,title){
   return GestureDetector(
     onTap: function,
     child:   Container(
       decoration: BoxDecoration(
           border: Border(bottom: BorderSide(color: appTheme.black10))
       ),
       child: Padding(
         padding:getPadding(bottom: 20),
         child: Row(
             mainAxisAlignment:
             MainAxisAlignment
                 .center,
             children: [
               CustomImageView(
                   svgPath:
                   icon,
                   height:
                   getSize(24),
                   width: getSize(
                       24)),
               Padding(
                   padding:
                   getPadding(
                       left:
                       14,
                       top: 3),
                   child: Text(
                       title,
                       style: theme
                           .textTheme
                           .bodyLarge)),
               Spacer(),
               CustomImageView(
                   svgPath:
                   ImageConstant
                       .imgArrowright,
                   height:
                   getSize(16),
                   width:
                   getSize(16),
                   margin:
                   getMargin(
                       top: 4,
                       bottom:
                       4))
             ]),
       ),
     ),
   );
 }
}





