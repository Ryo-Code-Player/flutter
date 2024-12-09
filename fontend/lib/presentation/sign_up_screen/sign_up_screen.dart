import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/core/utils/validation_functions.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';

import '../../widgets/custom_floating_text_field.dart';
import 'controller/sign_up_controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignUpController controller = Get.put(SignUpController());
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
              body: Form(
                  key: _formKey,
                  child: Container(
                      width: double.maxFinite,
                      padding:
                      getPadding(left: 16, top: 46, right: 16, bottom: 46),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("lbl_sign_up".tr,
                                style: theme.textTheme.headlineMedium),
                            Padding(
                                padding: getPadding(top: 13),
                                child: Text("msg_join_us_on_an_exciting".tr,
                                    style:
                                    CustomTextStyles.bodyLargeBluegray900)),
                            CustomFloatingTextField(
                                controller: controller.nameoneController,
                                margin: getMargin(top: 23),
                                hintText: "Full name",
                                labelText: "Full name",
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter name";
                                  }
                                  return null;
                                },
                                filled: false),
                            CustomFloatingTextField(
                                controller: controller.emailController,
                                margin: getMargin(top: 22),
                                hintText: "lbl_email_address".tr,
                                labelText: "lbl_email_address".tr,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                },
                                filled: false),
                            SizedBox(
                              height: getVerticalSize(20),
                            ),
                            phone_number_field(
                                controller.phonenumberoneController, (p0) {
                              if (p0 == null || p0.number.isEmpty) {
                                return "Enter valid number";
                              }
                              return null;
                            }),
                            Obx(
                                  () => CustomFloatingTextField(
                                  controller: controller.passwordController,
                                  labelText: "lbl_password".tr,
                                  hintText: "lbl_password".tr,
                                  margin: getMargin(top: 22),
                                  textInputType: TextInputType.emailAddress,
                                  obscureText: controller.isShowPassword.value,
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
                                                  : ImageConstant.imgEyeOpen))),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(56)),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  }),
                            ),
                            SizedBox(
                              height: getVerticalSize(16),
                            ),
                            GetBuilder<SignUpController>(
                              init: SignUpController(),
                              builder: (signUpController) => Row(
                                children: [
                                  CustomImageView(
                                    onTap: () {
                                      signUpController.cheak =
                                      !signUpController.cheak;
                                      signUpController.update();
                                    },
                                    height: getSize(20),
                                    width: getSize(20),
                                    svgPath: signUpController.cheak
                                        ? ImageConstant.imgCheakIconSelected
                                        : ImageConstant.imgCheakIconUnSelected,
                                  ),
                                  SizedBox(
                                    width: getHorizontalSize(8),
                                  ),
                                  RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "I accepted",
                                          style: theme.textTheme.bodyLarge),
                                      TextSpan(
                                          text: " Terms & Privacy Policy",
                                          style: CustomTextStyles
                                              .titleMediumPrimary)
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                            CustomElevatedButton(
                                height: getVerticalSize(56),
                                text: "lbl_sign_up".tr,
                                margin: getMargin(top: 40),
                                buttonStyle: CustomButtonStyles.fillPrimary,
                                buttonTextStyle:
                                CustomTextStyles.titleMediumOnPrimaryBold,
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    Get.back();
                                  }
                                }),
                            Spacer(),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(bottom: 7),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                "msg_already_have_a_account2"
                                                    .tr,
                                                style:
                                                theme.textTheme.bodyLarge),
                                            TextSpan(
                                                text: "lbl_sign_in".tr,
                                                style: CustomTextStyles
                                                    .titleMediumPrimary)
                                          ]),
                                          textAlign: TextAlign.left),
                                    )))
                          ]))))),
    );
  }

  onTapSignup() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
