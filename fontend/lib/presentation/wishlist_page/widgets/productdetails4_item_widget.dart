import '../controller/wishlist_controller.dart';
import '../models/productdetails4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Productdetails4ItemWidget extends StatelessWidget {
  Productdetails4ItemWidget(
    this.productdetails4ItemModelObj, {
    Key? key,
    this.onTapProductdetails,
  }) : super(
          key: key,
        );

  Productdetails4ItemModel productdetails4ItemModelObj;

  var controller = Get.find<WishlistController>();

  VoidCallback? onTapProductdetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductdetails?.call();
      },
      child: Container(
        padding: getPadding(
          left: 8,
          top: 12,
          right: 8,
          bottom: 12,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: ImageConstant.imgFavorite,
              height: getSize(20),
              width: getSize(20),
              alignment: Alignment.centerRight,
              margin: getMargin(
                right: 2,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle2814,
              height: getVerticalSize(100),
              width: getHorizontalSize(145),
              alignment: Alignment.center,
              margin: getMargin(
                top: 16,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 20,
              ),
              child: Obx(
                () => Text(
                  productdetails4ItemModelObj.chocolatecakeTxt.value,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 10,
              ),
              child: Text(
                "lbl_23_00".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 6,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: getVerticalSize(17),
                    width: getHorizontalSize(46),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_25_00".tr,
                            style: CustomTextStyles.bodyMediumGray600,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: getVerticalSize(1),
                            width: getHorizontalSize(45),
                            margin: getMargin(
                              bottom: 6,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.gray600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                    ),
                    child: Text(
                      "lbl_12_off".tr,
                      style: CustomTextStyles.bodyMediumGreen700,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomElevatedButton(
                      width: getHorizontalSize(49),
                      text: "lbl_4_31".tr,
                      rightIcon: Container(
                        margin: getMargin(
                          left: 2,
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgStar,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 6,
                        top: 2,
                      ),
                      child: Text(
                        "lbl_7".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
