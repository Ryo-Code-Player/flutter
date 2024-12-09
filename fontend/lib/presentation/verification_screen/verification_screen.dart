import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';
import 'package:pinput/pinput.dart';

import 'controller/verification_controller.dart';



class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
 VerificationController controller = Get.put(VerificationController());
 GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
            backgroundColor: theme.colorScheme.onPrimary,
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
                title: AppbarTitle(text: "lbl_verification".tr),
                styleType: Style.bgFill),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 21, right: 16, bottom: 21),
                child: Form(
                 key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       Container(
                           width: getHorizontalSize(375),
                           margin: getMargin(left: 5, right: 4),
                           child: Text("msg_to_ensure_the_security".tr,
                               maxLines: 2,
                               overflow: TextOverflow.ellipsis,
                               textAlign: TextAlign.center,
                               style: CustomTextStyles.bodyLarge_1)),
                       Padding(
                           padding: getPadding(top: 24),
                           child: RichText(
                               text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_code_sent_to".tr,
                                    style: theme.textTheme.bodyLarge),
                                TextSpan(
                                    text: "msg_ronaldrich08_gmail_com".tr,
                                    style: CustomTextStyles.titleMedium16_1)
                               ]),
                               textAlign: TextAlign.left)),

                       SizedBox(height: getVerticalSize(16),),
                       Obx(() =>
                           Pinput(
                            errorTextStyle: CustomTextStyles.bodyErrorStyle,
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            disabledPinTheme: PinTheme(
                                padding: getPadding(left: 9, right: 9),
                                decoration:
                                BoxDecoration(color: Colors.red)),
                            controller: controller.otpController.value,
                            length: 6,
                            validator: (value) {
                             if (value == null || value.isEmpty) {
                              return "Please enter valid code";
                             }
                             return null;
                            },
                            errorPinTheme: PinTheme(
                             padding: getPadding(left: 8.5, right: 8.5),
                             decoration: BoxDecoration(
                              color: appTheme.white,
                              border:
                              Border.all(color: appTheme.errorColor),
                              borderRadius: BorderRadius.circular(
                               getHorizontalSize(8),
                              ),
                             ),
                             textStyle: CustomTextStyles.bodyErrorStyle,
                             width: getHorizontalSize(50),
                             height: getHorizontalSize(50),
                            ),
                            defaultPinTheme: PinTheme(
                             padding: getPadding(left: 8.5, right: 8.5),
                             width: getHorizontalSize(50),
                             height: getHorizontalSize(50),
                             textStyle: CustomTextStyles.bodyStyle24Black,
                             decoration: BoxDecoration(
                              border: Border.all(
                                  color: appTheme.black40),
                              borderRadius: BorderRadius.circular(
                               getHorizontalSize(8),
                              ),
                             ),
                            ),
                           ),





                        // CustomPinCodeTextField(
                        // context: context,
                        // margin: getMargin(top: 16),
                        // controller: controller.otpController.value,
                        // onChanged: (value) {})





                       ),
                       CustomElevatedButton(
                           height: getVerticalSize(56),
                           text: "lbl_verify".tr,
                           margin: getMargin(top: 40, bottom: 5),
                           buttonStyle: CustomButtonStyles.fillPrimary,
                           buttonTextStyle:
                           CustomTextStyles.titleMediumOnPrimaryBold,
                           onTap: () {
                            if(_formKey.currentState!.validate()){
                             onTapVerify();}
                           })
                      ]),
                )))),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }

 onTapVerify() {
  Get.toNamed(
   AppRoutes.resetPasswordScreen,
  );
 }
}





