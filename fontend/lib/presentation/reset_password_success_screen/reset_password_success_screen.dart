import 'controller/reset_password_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordSuccessScreen
    extends GetWidget<ResetPasswordSuccessController> {
  const ResetPasswordSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () async{
        return false;
      },
      child: Container(
        margin: getMargin(
          bottom: 5,
        ),
        padding: getPadding(
          left: 32,
          top: 28,
          right: 32,
          bottom: 28,
        ),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: getPadding(
                top: 7,
              ),
              child: Text(
                "msg_password_updated".tr,
                style: theme.textTheme.titleLarge,
              ),
            ),
            CustomImageView(
              svgPath: ImageConstant.imgCheckmarkGreenA700,
              height: getSize(96),
              width: getSize(96),
              margin: getMargin(
                top: 25,
              ),
            ),
            Container(
              width: getHorizontalSize(314),
              margin: getMargin(
                top: 26,
              ),
              child: Text(
                "msg_you_have_successfully".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            ),
            CustomElevatedButton(
              onTap: (){
                Get.offAllNamed(AppRoutes.loginWithActiveScreen);
              },
              height: getVerticalSize(56),
              text: "lbl_go_to_log_in".tr,
              margin: getMargin(
                left: 33,
                top: 22,
                right: 33,
              ),
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryBold,
            ),
          ],
        ),
      ),
    );
  }
}
