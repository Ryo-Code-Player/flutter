import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/core/utils/validation_functions.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';
import 'package:flutterbekeryapp/widgets/custom_floating_text_field.dart';
import 'controller/login_with_active_controller.dart';

class LoginWithActiveScreen extends StatefulWidget {
  const LoginWithActiveScreen({super.key});

  @override
  State<LoginWithActiveScreen> createState() => _LoginWithActiveScreenState();
}

class _LoginWithActiveScreenState extends State<LoginWithActiveScreen> {
  LoginWithActiveController controller = Get.put(LoginWithActiveController());

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
        onWillPop: () async {
          closeApp();
          return false;
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
                        padding: getPadding(
                            left: 16, top: 46, right: 16, bottom: 46),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Log In",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: theme.textTheme.headlineMedium),
                              Padding(
                                  padding: getPadding(top: 13),
                                  child: Text("msg_hello_welcome_back".tr,
                                      style:
                                          CustomTextStyles.bodyLargeGray700_1)),
                              CustomFloatingTextField(
                                  controller: controller.emailController,
                                  labelText: "msg_username_or_email2".tr,
                                  hintText: "msg_username_or_email2".tr,
                                  margin: getMargin(top: 30),
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              Obx(
                                () => CustomFloatingTextField(
                                    controller: controller.passwordController,
                                    labelText: "lbl_password".tr,
                                    hintText: "lbl_password".tr,
                                    margin: getMargin(top: 26),
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
                                      } else if (value.length < 8) {
                                        return "Please enter 8 digit password";
                                      }
                                      return null;
                                    }),
                              ),
                              GetBuilder<LoginWithActiveController>(
                                init: LoginWithActiveController(),
                                builder: (loginWithActiveController) => Padding(
                                    padding: getPadding(top: 20, right: 8),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              CustomImageView(
                                                onTap: () {
                                                  loginWithActiveController
                                                          .cheak =
                                                      !loginWithActiveController
                                                          .cheak;
                                                  loginWithActiveController
                                                      .update();
                                                },
                                                height: getSize(20),
                                                width: getSize(20),
                                                svgPath: loginWithActiveController
                                                        .cheak
                                                    ? ImageConstant
                                                        .imgCheakIconSelected
                                                    : ImageConstant
                                                        .imgCheakIconUnSelected,
                                              ),
                                              SizedBox(
                                                width: getHorizontalSize(8),
                                              ),
                                              Text(
                                                "lbl_remember_me".tr,
                                                style:
                                                    theme.textTheme.bodyLarge,
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              onTapTxtForgotpassword();
                                            },
                                            child: Text(
                                                "msg_forgot_password".tr,
                                                style:
                                                    theme.textTheme.bodyLarge),
                                          )
                                        ])),
                              ),
                              CustomElevatedButton(
                                  height: getVerticalSize(56),
                                  text: "lbl_log_in".tr,
                                  margin: getMargin(top: 40),
                                  buttonStyle: CustomButtonStyles.fillPrimary,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumOnPrimaryBold,
                                  onTap: () {
                                    if (_formKey.currentState!.validate()) {
                                      PrefUtils.setIsSignIn(false);
                                      onTapLogin();
                                    }
                                  }),
                              SizedBox(
                                height: getVerticalSize(30),
                              ),
                              Spacer(),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtDonthaveaaccount();
                                      },
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "msg_don_t_have_a_account2"
                                                        .tr,
                                                style:
                                                    theme.textTheme.bodyLarge),
                                            TextSpan(
                                                text: "lbl_sign_up".tr,
                                                style: CustomTextStyles
                                                    .titleMediumPrimary)
                                          ]),
                                          textAlign: TextAlign.left)))
                            ]))))));

  }

  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  onTapLogin() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapTxtDonthaveaaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
