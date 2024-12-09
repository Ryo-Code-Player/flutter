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

import '../my_address_screen/models/my_address_item_model.dart';
import 'controller/edit_address_controller.dart';



// ignore: must_be_immutable
class EditAddressScreen extends StatefulWidget {
   EditAddressScreen({super.key,required this.addressData});
  MyAddressItemModel addressData;
  @override
  State<EditAddressScreen> createState() => _EditAddressScreenState();
}

class _EditAddressScreenState extends State<EditAddressScreen> {
 EditAddressController controller = Get.put(EditAddressController());
 GlobalKey<FormState> _formKey = GlobalKey<FormState>();

 @override
 Widget build(BuildContext context) {
   controller.nameController.text = widget.addressData.name!;
   controller.addressController.text = widget.addressData.address!;
   controller.pincodeController.text = widget.addressData.pincode!;
   controller.cityController.text = widget.addressData.city!;
   controller.phoneNumberController.text = widget.addressData.phoneNumber!;
   // controller.selectedDropDownValue = widget.addressData.address!;
  mediaQueryData = MediaQuery.of(context);
  return WillPopScope(
   onWillPop: () async {
    Get.back();
    return true;
   },
   child: ColorfulSafeArea(
       color: appTheme.white,
       child:  Scaffold(
           resizeToAvoidBottomInset: false,
           backgroundColor: appTheme.gray10002,
           body: Form(
               key: _formKey,
               child: SizedBox(
                   width: double.maxFinite,
                   child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                        Container(
                            padding: getPadding(top: 22, bottom: 22),
                            decoration: AppDecoration.white,
                            child: CustomAppBar(
                                leadingWidth: getHorizontalSize(44),
                                leading: AppbarImage(
                                    svgPath: ImageConstant.imgArrowleft,
                                    margin: getMargin(
                                        left: 20, top: 1, bottom: 1),
                                    onTap: () {
                                     onTapArrowleftone();
                                    }),
                                centerTitle: true,
                                title: AppbarTitle(
                                    text: "lbl_edit_address".tr))),
                        Container(
                            width: double.maxFinite,
                            margin: getMargin(top: 12),
                            padding: getPadding(
                                left: 12, top: 23, right: 12, bottom: 23),
                            decoration: AppDecoration.white,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                 CustomFloatingTextField(
                                     margin: getMargin(left: 8, right: 8),
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
                                     margin: getMargin(
                                         left: 8, top: 17, right: 8),
                                     controller:
                                     controller.addressController,
                                     labelText: "lbl_address".tr,
                                     hintText: "lbl_address".tr,
                                     contentPadding: getPadding(
                                         left: 16,
                                         top: 19,
                                         right: 16,
                                         bottom: 80),),
                                 CustomFloatingTextField(
                                     margin: getMargin(
                                         left: 8, top: 12, right: 8),
                                     controller:
                                     controller.pincodeController,
                                     labelText: "lbl_pincode".tr,
                                     labelStyle: theme.textTheme.bodyLarge!,
                                     hintText: "lbl_pincode".tr,
                                     textInputType: TextInputType.number,
                                     validator: (value) {
                                      if (!isNumeric(value)) {
                                       return "Please enter valid number";
                                      }
                                      return null;
                                     }),
                                 CustomFloatingTextField(
                                     margin: getMargin(
                                         left: 8, top: 19, right: 8),
                                     controller: controller.cityController,
                                     labelText: "lbl_city".tr,
                                     labelStyle: theme.textTheme.bodyLarge!,
                                     hintText: "lbl_city".tr),
                                 CustomDropDown(
                                     icon: Container(
                                         margin:
                                         getMargin(left: 30, right: 16),
                                         child: CustomImageView(
                                             svgPath: ImageConstant
                                                 .imgArrowdownBlack900)),
                                     margin: getMargin(
                                         left: 8, top: 19, right: 8),
                                     hintText: "State",
                                     items: controller.editAddressModelObj
                                         .value.dropdownItemList.value,
                                     onChanged: (value) {
                                      controller.onSelected(value);
                                     }),
                                 CustomDropDown(
                                     icon: Container(
                                         margin:
                                         getMargin(left: 30, right: 16),
                                         child: CustomImageView(
                                             svgPath: ImageConstant
                                                 .imgArrowdownBlack900)),
                                     margin: getMargin(
                                         left: 8, top: 19, right: 8),
                                     hintText: "lbl_us".tr,
                                     items: controller.editAddressModelObj
                                         .value.dropdownItemList1.value,
                                     onChanged: (value) {
                                      controller.onSelected1(value);
                                     }),
                                 CustomFloatingTextField(
                                     margin: getMargin(
                                         left: 8, top: 19, right: 8),
                                     controller:
                                     controller.phoneNumberController,
                                     labelText: "lbl_316_555_0116".tr,
                                     labelStyle: theme.textTheme.bodyLarge!,
                                     hintText: "lbl_316_555_0116".tr,
                                     textInputAction: TextInputAction.done,
                                     borderDecoration:
                                     FloatingTextFormFieldStyleHelper
                                         .outlineGrayTL12),
                                 CustomElevatedButton(
                                     height: getVerticalSize(56),
                                     text: "lbl_save".tr,
                                     margin: getMargin(
                                         left: 8, top: 41, bottom: 5),
                                     buttonStyle:
                                     CustomButtonStyles.fillPrimary,
                                     buttonTextStyle: CustomTextStyles
                                         .titleMediumOnPrimaryBold,
                                     onTap: () {
                                      onTapSave();
                                     })
                                ]))
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





