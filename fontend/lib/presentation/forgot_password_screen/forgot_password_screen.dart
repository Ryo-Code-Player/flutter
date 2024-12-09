import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import 'controller/forgot_password_controller.dart';



class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ForgotPasswordController controller = Get.put(ForgotPasswordController());

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
                                        text: "lbl_forgot_password".tr))),
                            Container(
                                padding: getPadding(
                                    left: 16, top: 18, right: 16, bottom: 18),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(313),
                                          margin: getMargin(left: 34, right: 36),
                                          child: Text("Please provide the email address that you used when signed up for your account.",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyLargeBluegray900)),
                                      CustomFloatingTextField(
                                          controller: controller.emailController,
                                          margin: getMargin(top: 22),
                                          hintText: "lbl_email_address".tr,
                                          labelText:"lbl_email_address".tr,
                                          textInputType: TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidEmail(value, isRequired: true))) {
                                              return "Please enter valid email";
                                            }
                                            return null;
                                          },

                                          filled: false),
                                      CustomElevatedButton(
                                          height: getVerticalSize(56),
                                          text: "lbl_send".tr,
                                          margin: getMargin(top: 40, bottom: 5),
                                          buttonStyle:
                                          CustomButtonStyles.fillPrimary,
                                          buttonTextStyle: CustomTextStyles
                                              .titleMediumOnPrimaryBold,
                                          onTap: () {
                                            if(_formKey.currentState!.validate()){
                                              onTapSend();
                                            }
                                          })
                                    ]))
                          ]))))),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }

  onTapSend() {
    Get.toNamed(
      AppRoutes.verificationScreen,
    );
  }
}






