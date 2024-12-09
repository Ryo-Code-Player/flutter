import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/my_address_delete_dialog/controller/my_address_delete_controller.dart';
import 'package:flutterbekeryapp/presentation/my_address_delete_dialog/my_address_delete_dialog.dart';

import '../edit_address_screen/edit_address_screen.dart';
import '../my_address_screen/models/my_address_item_model.dart';
import 'controller/my_address_edit_delete_controller.dart';



// ignore: must_be_immutable
class MyAddressEditDeleteBottomsheet extends StatefulWidget {
  MyAddressEditDeleteBottomsheet(this.controller, this.addressData,{Key? key}) : super(key: key);

  MyAddressEditDeleteController controller;
  MyAddressItemModel addressData;

  @override
  State<MyAddressEditDeleteBottomsheet> createState() => _MyAddressEditDeleteBottomsheetState();
}

class _MyAddressEditDeleteBottomsheetState extends State<MyAddressEditDeleteBottomsheet> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
            decoration: AppDecoration.white
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL16),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: getVerticalSize(4),
                      width: getHorizontalSize(48),
                      decoration: BoxDecoration(
                          color: appTheme.black10,
                          borderRadius:
                          BorderRadius.circular(getHorizontalSize(2)))),
                  GestureDetector(
                      onTap: () {
                        onTapTxtEdit(widget.controller);
                      },
                      child: Container(
                        width: double.infinity,
                        color: appTheme.white,
                        child: Padding(
                            padding: getPadding(top: 44),
                            child: Center(
                              child: Text("lbl_edit".tr,
                                  style: theme.textTheme.titleMedium),
                            )),
                      )),
                  Padding(
                      padding: getPadding(top: 20),
                      child: Divider(color: appTheme.black10)),
                  GestureDetector(
                      onTap: () {
                        onTapTxtDelete();
                      },
                      child: Container(
                        width: double.infinity,
                        color: appTheme.white,
                        child: Padding(
                            padding: getPadding(top: 22, bottom: 56),
                            child: Center(
                              child: Text("lbl_delete".tr,
                                  style: theme.textTheme.titleMedium),
                            )),
                      ))
                ])));
  }


  onTapTxtEdit(medel) {
    Get.back();
    Get.to(EditAddressScreen(addressData: widget.addressData,),);

  }

  onTapTxtDelete() {
    Get.back();
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding:  EdgeInsets.only(left: 0),
      content: MyAddressDeleteDialog(
        Get.put(
          MyAddressDeleteController(),
        ),
      ),
    ));
  }
}







