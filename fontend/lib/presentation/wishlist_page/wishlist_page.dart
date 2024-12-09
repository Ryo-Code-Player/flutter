import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../top_picks_for_you_screen/controller/top_picks_for_you_controller.dart';
import '../top_picks_for_you_screen/models/productdetails_item_model.dart';
import '../top_picks_for_you_screen/widgets/productdetails_item_widget.dart';
import 'controller/wishlist_controller.dart';
import 'models/wishlist_model.dart';

// ignore_for_file: must_be_immutable
class WishlistPage extends StatelessWidget {
  WishlistPage({Key? key}) : super(key: key);
  CustomBottomBarController customBottomBarController = Get.put(CustomBottomBarController());
  TopPicksForYouController topPicksForYouController = Get.put(TopPicksForYouController());
  WishlistController controller =
      Get.put(WishlistController(WishlistModel().obs));

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
                  height: getVerticalSize(73),
                  leadingWidth: getHorizontalSize(44),
                  leading: AppbarImage(
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 20, top: 24, bottom: 25),
                      onTap: () {
                        onTapArrowleftone();
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_wishlist".tr),
                  styleType: Style.bgFill),
              body:  Padding(
                padding: getPadding(top: 16),
                child: Container(
                  width: double.infinity,
                  color: topPicksForYouController.topPicksList.isEmpty?appTheme.gray10002:appTheme.white,
                  child: GetBuilder<TopPicksForYouController>(
                    init: TopPicksForYouController(),
                    builder:(topPicksForYouController) =>  topPicksForYouController.topPicksList.isNotEmpty?
                    GridView.builder(
                        padding: getPadding(left: 20,right: 20,top: 20,bottom: 24),
                        primary: false,
                        shrinkWrap: true,
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(292),
                            crossAxisCount: topPicksForYouController.topPicksList.length<2?topPicksForYouController.topPicksList.length:2,
                            mainAxisSpacing: getHorizontalSize(20),
                            crossAxisSpacing: getHorizontalSize(18.95)),
                        physics: BouncingScrollPhysics(),
                        itemCount:topPicksForYouController.topPicksList.length,
                        itemBuilder: (context, index) {
                          ProductdetailsItemModel model = topPicksForYouController.topPicksList[index];
                          return product_formate(
                              model,
                                  () { onTapProductdetails();},
                              CustomImageView(
                                  onTap: () {
                                    topPicksForYouController.setFavProduct(model);
                                  },
                                  svgPath: model.isFavourite!
                                      ? ImageConstant.imgFavouriteIconSelected
                                      : ImageConstant.imgFavorite,
                                  height: getSize(20),
                                  width: getSize(20),
                                  alignment: Alignment.centerRight));
                        }):
                    Column(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Container(
                              height: getSize(140),
                              width: getSize(140),
                              padding: getPadding(all: 28),
                              decoration: AppDecoration
                                  .fillGray200
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle
                                      .circleBorder70),
                              child: CustomImageView(
                                  svgPath:
                                  ImageConstant.imgFavorite1,
                                  height: getSize(84),
                                  width: getSize(84),
                                  alignment: Alignment.center)),
                          Padding(
                              padding: getPadding(top: 32),
                              child: Text(
                                  "msg_no_favourites_yet".tr,
                                  style: theme
                                      .textTheme.titleLarge)),
                          Padding(
                              padding: getPadding(top: 15),
                              child: Text(
                                  "msg_explore_more_and".tr,
                                  style:
                                  theme.textTheme.bodyLarge)),
                          CustomElevatedButton(
                              height: getVerticalSize(56),
                              width: getHorizontalSize(177),
                              text: "lbl_add_favourites".tr,
                              margin: getMargin(top: 30),
                              buttonStyle:
                              CustomButtonStyles.fillPrimary,
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumOnPrimaryBold,
                              onTap: () {
                                customBottomBarController.getIndex(0);
                                // onTapAddfavourites();
                              })
                        ]),
                  ),
                ),
              ))),
    );





























  }

  /// Navigates to the detailTabContainerScreen when the action is triggered.
  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the detailTabContainerScreen.
  onTapProductdetails() {
    Get.toNamed(AppRoutes.detailTabContainerScreen);
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
