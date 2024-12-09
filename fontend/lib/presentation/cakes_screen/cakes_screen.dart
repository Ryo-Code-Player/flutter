import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import '../top_picks_for_you_screen/widgets/productdetails_item_widget.dart';
import 'controller/cakes_controller.dart';
import 'models/productdetails1_item_model.dart';

class CakesScreen extends GetWidget<CakesController> {
  const CakesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
        onWillPop: () async {
          Get.back();
          return false;
        },
        child: ColorfulSafeArea(
            color: appTheme.white,
            child: Scaffold(
                backgroundColor: appTheme.gray10002,
                appBar: CustomAppBar(
                    height: getVerticalSize(81),
                    leadingWidth: 42,
                    leading: AppbarImage(
                        height: getVerticalSize(24),
                        width: getHorizontalSize(26),
                        svgPath: ImageConstant.imgArrowleft,
                        margin: getMargin(left: 16, top: 29, bottom: 28),
                        onTap: () {
                          Get.back();
                        }),
                    centerTitle: true,
                    title: AppbarTitle(text: "lbl_cakes".tr),
                    actions: [
                      AppbarImage(
                          height: getSize(24),
                          width: getSize(24),
                          svgPath: ImageConstant.imgSettings,
                          margin:
                          getMargin(left: 16, top: 29, right: 16, bottom: 28),
                          onTap: () {
                            Get.toNamed(AppRoutes.filterScreen);
                          })
                    ],
                    styleType: Style.bgFillWhiteA700),
                body: GetBuilder<CakesController>(
                    init: CakesController(),
                    builder: (controller) => Padding(
                      padding: getPadding(top: 10),
                      child: Container(
                        width: double.infinity,
                        decoration: AppDecoration.white,
                        child: GridView.builder(
                            padding: getPadding(left: 22,right: 22,top: 24,bottom: 24),
                            primary: false,
                            shrinkWrap: true,
                            gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: getVerticalSize(292),
                                mainAxisSpacing: getHorizontalSize(20),
                                crossAxisSpacing: getHorizontalSize(20),
                                crossAxisCount: controller.cakeData.length<2?controller.cakeData.length:2,
                               ),
                            physics: BouncingScrollPhysics(),
                            itemCount:controller.cakeData.length,
                            itemBuilder: (context, index) {
                              CakesItemModel model = controller.cakeData[index];
                              return product_formate(
                                  model,
                                      () { onTapProductdetails();},
                                  CustomImageView(
                                      onTap: () {
                                        controller.setFavProduct(model);
                                      },
                                      svgPath: model.isFavourite!
                                          ? ImageConstant.imgFavouriteIconSelected
                                          : ImageConstant.imgFavorite,
                                      height: getSize(20),
                                      width: getSize(20),
                                      alignment: Alignment.centerRight));
                            }),
                      ),
                    )
                ))));







  }

  onTapProductdetails() {
    Get.toNamed(AppRoutes.detailTabContainerScreen);
  }

  onTapArrowleftone() {
    Get.back();
  }
}
