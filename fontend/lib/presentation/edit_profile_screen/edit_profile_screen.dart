import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/core/utils/validation_functions.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';
import 'package:flutterbekeryapp/widgets/custom_floating_text_field.dart';

import 'controller/edit_profile_controller.dart';




class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
 EditProfileController controller = Get.put(EditProfileController());
 GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 @override
 Widget build(BuildContext context) {

  controller.nameController.text = "lbl_ronald_richards2".tr;
  controller.emailController.text = "msg_ronaldrichards_gmail_com".tr;
  controller.phoneNumberController.text = "lbl_219_555_0114".tr;



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
               title: AppbarTitle(text: "lbl_edit_profile".tr),
               styleType: Style.bgFill),
           body: Form(
               key: _formKey,
               child: Container(
                   width: double.maxFinite,
                   margin: getMargin(top: 12),
                   padding:
                   getPadding(left: 12, top: 24, right: 12, bottom: 24),
                   decoration: AppDecoration.white,
                   child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse225,
                            height: getSize(100),
                            width: getSize(100),
                            radius:
                            BorderRadius.circular(getHorizontalSize(50))),
                        CustomFloatingTextField(
                            margin: getMargin(left: 8, top: 23, right: 8),
                            controller: controller.nameController,
                            labelText: "lbl_name".tr,
                            hintText: "lbl_name".tr,
                            validator: (value) {
                             if (!isText(value)) {
                              return "Please enter valid text";
                             }
                             return null;
                            }),
                        CustomFloatingTextField(
                            margin: getMargin(left: 8, top: 23, right: 8),
                            controller: controller.emailController,
                            labelText: "lbl_email".tr,
                            hintText: "lbl_email".tr,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                             if (value == null ||
                                 (!isValidEmail(value, isRequired: true))) {
                              return "Please enter valid email";
                             }
                             return null;
                            }),
                        CustomFloatingTextField(
                            margin: getMargin(left: 8, top: 23, right: 8),
                            controller: controller.phoneNumberController,
                            labelText: "lbl_phone_number".tr,
                            hintText: "lbl_phone_number".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.phone,
                            validator: (value) {
                             if (!isValidPhone(value)) {
                              return "Please enter valid phone number";
                             }
                             return null;
                            }),
                        Spacer(),
                        CustomElevatedButton(
                            height: getVerticalSize(56),
                            text: "lbl_save".tr,
                            margin: getMargin(left: 8, bottom: 58),
                            buttonStyle: CustomButtonStyles.fillPrimary,
                            buttonTextStyle:
                            CustomTextStyles.titleMediumOnPrimaryBold,
                            onTap: () {
                             onTapSave();
                            })
                       ]))))),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }

 onTapSave() {
 Get.back();
 }
}




