import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/top_picks_for_you_screen/widgets/productdetails_item_widget.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import 'controller/top_picks_for_you_controller.dart';
import 'models/productdetails_item_model.dart';

class TopPicksForYouScreen extends StatefulWidget {
  const TopPicksForYouScreen({super.key});

  @override
  State<TopPicksForYouScreen> createState() => _TopPicksForYouScreenState();
}

class _TopPicksForYouScreenState extends State<TopPicksForYouScreen> {
  TopPicksForYouController controller = Get.put(TopPicksForYouController());

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
                  title: AppbarTitle(text: "msg_top_picks_for_you2".tr),
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
              body: Padding(
                padding: getPadding(top: 12),
                child: Container(
                    color: appTheme.white,
                    width: double.maxFinite,
                    child: GetBuilder<TopPicksForYouController>(
                      init: TopPicksForYouController(),
                      builder: (topPicksForYouController) => GridView.builder(
                          padding: getPadding(
                              left: 22, right: 22, top: 24, bottom: 24),
                          primary: false,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(292),
                                  crossAxisCount: topPicksForYouController
                                              .topPicksList.length <
                                          2
                                      ? topPicksForYouController
                                          .topPicksList.length
                                      : 2,
                                  mainAxisSpacing: getHorizontalSize(20),
                                  crossAxisSpacing: getHorizontalSize(18.95)),
                          physics: BouncingScrollPhysics(),
                          itemCount:
                              topPicksForYouController.topPicksList.length,
                          itemBuilder: (context, index) {
                            ProductdetailsItemModel model =
                                topPicksForYouController.topPicksList[index];
                            return animation_function(
                                index,
                                product_formate(model, () {
                                  onTapProductdetails();
                                },
                                    CustomImageView(
                                        onTap: () {
                                          // controller.setFavProduct(model);
                                        },
                                        svgPath: model.isFavourite!
                                            ? ImageConstant
                                                .imgFavouriteIconSelected
                                            : ImageConstant.imgFavorite,
                                        height: getSize(20),
                                        width: getSize(20),
                                        alignment: Alignment.centerRight)));
                          }),
                    )),
              ))),
    );
  }

  onTapProductdetails() {
    Get.toNamed(AppRoutes.detailTabContainerScreen);
  }

  onTapArrowleftone() {
    Get.back();
  }
}
