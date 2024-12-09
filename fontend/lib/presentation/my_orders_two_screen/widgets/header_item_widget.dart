import '../controller/my_orders_two_controller.dart';
import '../models/header_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

// ignore: must_be_immutable
class HeaderItemWidget extends StatelessWidget {
  HeaderItemWidget(
    this.headerItemModelObj, {
    Key? key,
    this.onTapArrowLeft,
  }) : super(
          key: key,
        );

  HeaderItemModel headerItemModelObj;

  var controller = Get.find<MyOrdersTwoController>();

  VoidCallback? onTapArrowLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 21,
        bottom: 21,
      ),
      decoration: AppDecoration.white,
      child: CustomAppBar(
        leadingWidth: getHorizontalSize(44),
        leading: AppbarImage(
          svgPath: ImageConstant.imgArrowleft,
          margin: getMargin(
            left: 20,
            bottom: 3,
          ),
          onTap: () {
            onTapArrowLeft?.call();
          },
        ),
        centerTitle: true,
        title: AppbarTitle(
          text: "lbl_my_orders".tr,
        ),
        // itemCount: headerItemModelObj.appbarItemList.value.length,
        // itemBuilder: (context, index) {
        //   AppbarItemModel model =
        //       headerItemModelObj.appbarItemList.value[index];
        //   return AppbarItemWidget(
        //     model,
        //     onTapImgArrowLeft: () {
        //       onTapImgArrowLeft();
        //     },
        //   );
        // },
      ),
    );
  }
}
