import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image_1.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_elevated_button.dart';
import 'controller/my_cards_details_controller.dart';
import 'models/my_cards_details_model.dart';



class MyCardsDetailsScreen extends StatefulWidget {
  const MyCardsDetailsScreen({super.key});

  @override
  State<MyCardsDetailsScreen> createState() => _MyCardsDetailsScreenState();
}

class _MyCardsDetailsScreenState extends State<MyCardsDetailsScreen> {
 MyCardsDetailsController controller = MyCardsDetailsController();
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
                            title: AppbarTitle(text: "lbl_my_cards".tr),
                            actions: [
                              controller.myCardsDetailsModelObj.isEmpty?SizedBox():AppbarImage1(
                                 svgPath: ImageConstant.imgPlusOnerror,
                                 margin: getMargin(
                                     left: 20, top: 2, right: 20, bottom: 5),
                                 onTap: () {
                                  onTapPlusone();
                                 })
                            ])),
                     controller.myCardsDetailsModelObj.isEmpty?Expanded(child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                       Container(
                           height: getSize(140),
                           width: getSize(140),
                           padding: getPadding(
                               left: 24,
                               top: 42,
                               right: 24,
                               bottom: 42),
                           decoration: AppDecoration.fillGray200
                               .copyWith(
                               borderRadius: BorderRadiusStyle
                                   .circleBorder70),
                           child: CustomImageView(
                               svgPath: ImageConstant.imgCamera,
                               height: getVerticalSize(54),
                               width: getHorizontalSize(89),
                               alignment: Alignment.center)),
                       Padding(
                           padding: getPadding(top: 34),
                           child: Text("lbl_no_card_yet".tr,
                               style: theme.textTheme.headlineMedium)),
                       Padding(
                           padding: getPadding(top: 15),
                           child: Text(
                               "msg_it_is_a_long_established".tr,
                               style: theme.textTheme.bodyLarge)),
                       CustomElevatedButton(
                           height: getVerticalSize(56),
                           width: getHorizontalSize(178),
                           text: "lbl_add".tr,
                           margin: getMargin(top: 30, bottom: 5),
                           buttonStyle: CustomButtonStyles.fillPrimary,
                           buttonTextStyle: CustomTextStyles
                               .titleMediumOnPrimaryBold)
                     ],)):Expanded(
                      child: Container(
                          margin: getMargin(top: 12),
                          padding: getPadding(top: 22, bottom: 22),
                          decoration: AppDecoration.white,
                          child:

                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                               Padding(
                                   padding: getPadding(left: 20),
                                   child: Text("lbl_your_cards".tr,
                                       style: theme.textTheme.bodyLarge)),


                               ListView.builder(
                                primary: false,
                                shrinkWrap: true,
                                itemCount: controller.myCardsDetailsModelObj.length,

                                itemBuilder:(context, index) {
                                 MyCardsDetailsModel data = controller.myCardsDetailsModelObj[index];
                                 return  data.type == "card"?Container(
                                     width: double.maxFinite,
                                     margin: getMargin(top: 17),
                                     padding: getPadding(all: 16),
                                     decoration: AppDecoration.white.copyWith(
                                         borderRadius:
                                         BorderRadiusStyle.roundedBorder16),
                                     child: Row(
                                         crossAxisAlignment:
                                         CrossAxisAlignment.start,
                                         children: [
                                          CustomImageView(
                                              svgPath:
                                              data.icon,
                                              height: getSize(34),
                                              width: getSize(34),
                                              margin: getMargin(bottom: 18)),
                                          Padding(
                                              padding:
                                              getPadding(left: 15, top: 4),
                                              child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: [
                                                   Text(data.title!,
                                                       style: theme.textTheme
                                                           .titleMedium),
                                                   Padding(
                                                       padding:
                                                       getPadding(top: 5),
                                                       child: Text(
                                                           data.subtitle!,
                                                           style: CustomTextStyles
                                                               .bodyLargeGray700))
                                                  ]))
                                         ])):SizedBox(height: getVerticalSize(0),);
                               },)

                              ])),
                    )
                   ])))),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }

 onTapPlusone() {
  Get.toNamed(
   AppRoutes.addACardDefualtScreen,
  );
 }
}



