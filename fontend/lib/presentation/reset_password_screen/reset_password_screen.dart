import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';
import 'package:flutterbekeryapp/widgets/custom_floating_text_field.dart';

import '../reset_password_success_screen/reset_password_success_screen.dart';
import 'controller/reset_password_controller.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  ResetPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ResetPasswordController resetPasswordController = Get.put(ResetPasswordController());
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
              body: Form(
                  key: _formKey,
                  child: SizedBox(
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
                                    title: AppbarTitle(
                                        text: "lbl_reset_password".tr))),
                            Container(
                                padding: getPadding(
                                    left: 16, top: 23, right: 16, bottom: 23),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(342),
                                          margin: getMargin(left: 20, right: 21),
                                          child: Text(
                                              "msg_you_re_just_moments".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  CustomTextStyles.bodyLarge_1)),

                                     Obx(
                                          () => CustomFloatingTextField(
                                          controller: controller.newpasswordController,
                                          labelText:"lbl_new_password".tr,
                                          hintText: "lbl_new_password".tr,
                                          margin: getMargin(top: 20),
                                          textInputType: TextInputType.emailAddress,
                                          obscureText:
                                          controller.isShowPassword.value,
                                          suffix: InkWell(
                                              onTap: () {
                                               controller.isShowPassword.value =
                                               !controller.isShowPassword.value;
                                              },
                                              child: Container(
                                                  margin:
                                                  getMargin(left: 16, right: 16),
                                                  child: CustomImageView(
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      svgPath: controller
                                                          .isShowPassword.value
                                                          ? ImageConstant.imgCheckmark
                                                          : ImageConstant
                                                          .imgEyeOpen))),
                                          suffixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(56)),
                                          validator: (value) {
                                           if (value == null || value.isEmpty) {
                                            return "Please enter valid password";
                                           }
                                           return null;
                                          }),
                                     ),


                                     Obx(
                                          () => CustomFloatingTextField(
                                          controller: controller.confirmpasswordController,
                                          labelText:"msg_confirm_password".tr,
                                          hintText: "msg_confirm_password".tr,
                                          margin: getMargin(top: 16),
                                          textInputType: TextInputType.emailAddress,
                                          obscureText:
                                          controller.isShowPassword1.value,
                                          suffix: InkWell(
                                              onTap: () {
                                               controller.isShowPassword1.value =
                                               !controller.isShowPassword1.value;
                                              },
                                              child: Container(
                                                  margin:
                                                  getMargin(left: 16, right: 16),
                                                  child: CustomImageView(
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      svgPath: controller
                                                          .isShowPassword1.value
                                                          ? ImageConstant.imgCheckmark
                                                          : ImageConstant
                                                          .imgEyeOpen))),
                                          suffixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(56)),
                                          validator: (value) {
                                           if (value == null || value.isEmpty) {
                                            return "Please enter valid password";
                                           }
                                           return null;
                                          }),
                                     ),
                                      CustomElevatedButton(
                                          height: getVerticalSize(56),
                                          text: "lbl_reset_password2".tr,
                                          margin: getMargin(top: 40, bottom: 5),
                                          buttonStyle:
                                              CustomButtonStyles.fillPrimary,
                                          buttonTextStyle: CustomTextStyles
                                              .titleMediumOnPrimaryBold,
                                          onTap: () {
                                           if(_formKey.currentState!.validate()){
                                            onTapResetpassword(context);
                                           }
                                          })
                                    ]))
                          ]))))),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }

  onTapResetpassword(context) {

   showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
     return AlertDialog(
         insetPadding: EdgeInsets.all(16),
         shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(20)),
         contentPadding: EdgeInsets.zero,
         content: ResetPasswordSuccessScreen());
    },
   );





  }
}
