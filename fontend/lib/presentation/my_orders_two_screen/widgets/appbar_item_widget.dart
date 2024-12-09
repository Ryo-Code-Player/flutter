import '../controller/my_orders_two_controller.dart';
import '../models/appbar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

// ignore: must_be_immutable
class AppbarItemWidget extends StatelessWidget {
  AppbarItemWidget(
    this.appbarItemModelObj, {
    Key? key,
    this.onTapImgArrowLeft,
  }) : super(
          key: key,
        );

  AppbarItemModel appbarItemModelObj;

  var controller = Get.find<MyOrdersTwoController>();

  VoidCallback? onTapImgArrowLeft;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      svgPath: ImageConstant.imgArrowleft,
      height: getSize(24),
      width: getSize(24),
      margin: getMargin(
        left: 20,
        bottom: 3,
      ),
      onTap: () {
        onTapImgArrowLeft?.call();
      },
    );
  }
}
