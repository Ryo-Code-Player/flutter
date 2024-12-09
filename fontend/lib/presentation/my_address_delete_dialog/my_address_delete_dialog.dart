import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/custom_outlined_button.dart';

import 'controller/my_address_delete_controller.dart';

// ignore_for_file: must_be_immutable
class MyAddressDeleteDialog extends StatelessWidget {
  MyAddressDeleteDialog(this.controller, {Key? key}) : super(key: key);

  MyAddressDeleteController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: getHorizontalSize(374),
        padding: getPadding(all: 30),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: getHorizontalSize(283),
                  margin: getMargin(left: 16, top: 2, right: 16),
                  child: Text("msg_are_you_sure_you2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium)),
              Padding(
                  padding: getPadding(top: 32),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: CustomOutlinedButton(

                                text: "lbl_no".tr,
                                margin: getMargin(right: 10),
                                buttonStyle:
                                CustomButtonStyles.fillwhite,
                                onTap: () {
                                  onTapNo();
                                })),
                       Expanded(
                           child: CustomOutlinedButton(
                               text: "lbl_yes".tr,
                               margin: getMargin(left: 10),
                               buttonStyle:
                               CustomButtonStyles.fillPrimary,
                               buttonTextStyle: CustomTextStyles
                                   .titleMediumOnPrimaryBold,
                               onTap: () {
                                onTapNo();
                               })),
                      ]))
            ]));
  }

  onTapNo() {
   Get.back();
  }
}
