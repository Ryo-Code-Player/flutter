import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/core/utils/validation_functions.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_drop_down.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';
import 'package:flutterbekeryapp/widgets/custom_floating_text_field.dart';

import 'controller/add_new_address_controller.dart';



class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({super.key});

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
 AddNewAddressController controller = Get.put(AddNewAddressController());
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

           appBar:  CustomAppBar(
               height: getVerticalSize(81),
               leadingWidth: 42,
               centerTitle: true,
               leading: AppbarImage(
                   svgPath: ImageConstant.imgArrowleft,
                   margin: getMargin(
                       left: 20, top: 1, bottom: 1),
                   onTap: () {
                    onTapArrowleftone();
                   }),
               title: AppbarTitle(text: "lbl_add_address".tr),
               styleType: Style.bgFillWhiteA700),

           resizeToAvoidBottomInset: false,
           backgroundColor: appTheme.gray10002,
           body: Form(
               key: _formKey,
               child: SizedBox(
                   width: double.maxFinite,
                   child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                        Expanded(
                            child: SingleChildScrollView(
                                padding: getPadding(top: 12),
                                child: Container(
                                    padding: getPadding(
                                        left: 12,
                                        top: 23,
                                        right: 12,
                                        bottom: 23),
                                    decoration: AppDecoration.white,
                                    child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                         CustomFloatingTextField(
                                             margin: getMargin(
                                                 left: 8, right: 8),
                                             controller:
                                             controller.nameController,
                                             labelText: "lbl_name".tr,
                                             hintText: "lbl_name".tr,
                                             validator: (value) {
                                              if (!isText(value)) {
                                               return "Please enter valid text";
                                              }
                                              return null;
                                             }),
                                         CustomFloatingTextField(
                                             margin: getMargin(
                                                 left: 8, top: 12, right: 8),
                                             controller: controller
                                                 .addressController,
                                             labelText: "lbl_address".tr,
                                             hintText: "lbl_address".tr,
                                             contentPadding: getPadding(
                                                 left: 16,
                                                 top: 19,
                                                 right: 16,
                                                 bottom: 80),
                                            ),
                                         CustomFloatingTextField(
                                             margin: getMargin(
                                                 left: 8, top: 15, right: 8),
                                             controller: controller
                                                 .pincodeController,
                                             labelText: "lbl_pincode".tr,
                                             hintText: "lbl_pincode".tr,
                                             textInputType:
                                             TextInputType.number,
                                             validator: (value) {
                                              if (!isNumeric(value)) {
                                               return "Please enter valid number";
                                              }
                                              return null;
                                             }),
                                         CustomFloatingTextField(
                                             margin: getMargin(
                                                 left: 8, top: 16, right: 8),
                                             controller:
                                             controller.cityController,
                                             labelText: "lbl_city".tr,
                                             hintText: "lbl_city".tr),
                                         CustomDropDown(
                                             icon: Container(
                                                 margin: getMargin(
                                                     left: 30, right: 16),
                                                 child: CustomImageView(
                                                     svgPath: ImageConstant
                                                         .imgArrowdownBlack900)),
                                             margin: getMargin(
                                                 left: 8, top: 16, right: 8),
                                             hintText: "lbl_new_mexico".tr,
                                             items: controller
                                                 .addNewAddressModelObj
                                                 .value
                                                 .dropdownItemList
                                                 .value,
                                             onChanged: (value) {
                                              controller.onSelected(value);
                                             }),
                                         CustomDropDown(
                                             icon: Container(
                                                 margin: getMargin(
                                                     left: 30, right: 16),
                                                 child: CustomImageView(
                                                     svgPath: ImageConstant
                                                         .imgArrowdownBlack900)),
                                             margin: getMargin(
                                                 left: 8, top: 16, right: 8),
                                             hintText: "lbl_us".tr,
                                             items: controller
                                                 .addNewAddressModelObj
                                                 .value
                                                 .dropdownItemList1
                                                 .value,
                                             onChanged: (value) {
                                              controller.onSelected1(value);
                                             }),
                                         CustomFloatingTextField(
                                             margin: getMargin(
                                                 left: 8, top: 16, right: 8),
                                             controller: controller
                                                 .pincodevalueController,
                                             labelText:
                                             "PhoneNumber",
                                             hintText:"PhoneNumber",
                                             // hintText: "lbl_316_555_0116".tr,
                                             textInputAction:
                                             TextInputAction.done,

                                            ),
                                         CustomElevatedButton(
                                             height: getVerticalSize(56),
                                             text: "lbl_add".tr,
                                             margin: getMargin(
                                                 left: 8,
                                                 top: 59,
                                                 bottom: 34),
                                             buttonStyle: CustomButtonStyles
                                                 .fillPrimary,
                                             buttonTextStyle: CustomTextStyles
                                                 .titleMediumOnPrimaryBold,
                                             onTap: () {
                                              onTapAdd();
                                             })
                                        ]))))
                       ]))))),
  );
 }


 onTapArrowleftone() {
  Get.back();
 }


 onTapAdd() {
 Get.back();
 }
}







