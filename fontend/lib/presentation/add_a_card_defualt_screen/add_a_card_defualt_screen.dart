import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';
import 'package:flutterbekeryapp/widgets/custom_text_form_field.dart';

import 'controller/add_a_card_defualt_controller.dart';



class AddACardDefualtScreen extends StatefulWidget {
  const AddACardDefualtScreen({super.key});

  @override
  State<AddACardDefualtScreen> createState() => _AddACardDefualtScreenState();
}

class _AddACardDefualtScreenState extends State<AddACardDefualtScreen> {
 AddACardDefualtController controller = Get.put(AddACardDefualtController());
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
                            title: AppbarTitle(text: "lbl_my_cards".tr))),
                    Expanded(
                      child: Container(
                          margin: getMargin(top: 12),
                          padding: getPadding(
                              left: 16, top: 14, right: 16, bottom: 14),
                          decoration: AppDecoration.white,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                               Container(
                                   width: getHorizontalSize(318),
                                   margin: getMargin(left: 31, right: 32),
                                   child: RichText(
                                       text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_enter_your_card2".tr,
                                            style: CustomTextStyles
                                                .bodyLargeSFProText_1),
                                        TextSpan(
                                            text: "lbl_learn_more".tr,
                                            style: CustomTextStyles
                                                .bodyLargeSFProTextPrimary)
                                       ]),
                                       textAlign: TextAlign.center)),
                               CustomTextFormField(
                                   controller:
                                   controller.cardnumberoneController,
                                   margin: getMargin(top: 45),
                                   hintText: "lbl_1234_5678_9124".tr,
                                  ),
                               Padding(
                                   padding: getPadding(top: 22),
                                   child: Row(
                                       mainAxisAlignment:
                                       MainAxisAlignment.center,
                                       children: [
                                        Expanded(
                                            child: CustomTextFormField(
                                                controller: controller
                                                    .expirationdateController,
                                                margin: getMargin(right: 8),
                                                hintText: "lbl_mm_yy".tr,
                                              )),
                                        Expanded(
                                            child: CustomTextFormField(
                                                controller: controller
                                                    .cvvoneController,
                                                margin: getMargin(left: 8),
                                                hintText: "lbl_123".tr,
                                                textInputAction:
                                                TextInputAction.done))
                                       ])),
                               CustomElevatedButton(
                                   height: getVerticalSize(56),
                                   text: "lbl_add_card".tr,
                                   margin: getMargin(top: 40, bottom: 5),
                                   buttonStyle: CustomButtonStyles.fillPrimary,
                                   buttonTextStyle: CustomTextStyles
                                       .titleMediumOnPrimaryBold,
                                   onTap: () {
                                    onTapAddcard();
                                   })
                              ])),
                    )
                   ])))),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }

 onTapAddcard() {
 Get.back();
 }
}





