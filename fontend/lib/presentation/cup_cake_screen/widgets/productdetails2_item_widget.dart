import '../controller/cup_cake_controller.dart';
import '../models/productdetails2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Productdetails2ItemWidget extends StatelessWidget {
  Productdetails2ItemWidget(
    this.productdetails2ItemModelObj, {
    Key? key,
    this.onTapProductdetails,
  }) : super(
          key: key,
        );

  CupCakeItemModel productdetails2ItemModelObj;

  var controller = Get.find<CupCakeController>();

  VoidCallback? onTapProductdetails;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        onTap: () {
          onTapProductdetails?.call();
        },
        child: Container(
          padding: getPadding(
            left: 7,
            top: 12,
            right: 7,
            bottom: 12,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomElevatedButton(
                    height: getVerticalSize(22),
                    width: getHorizontalSize(93),
                    text: "lbl_recommended".tr,
                    buttonStyle: CustomButtonStyles.fillGray,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgFavorite,
                    height: getVerticalSize(20),
                    width: getHorizontalSize(19),
                    margin: getMargin(
                      left: 45,
                      top: 2,
                    ),
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle376,
                height: getVerticalSize(101),
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
                    productdetails2ItemModelObj.strawberryCakeTTxt.value,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 11,
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
                    top: 17,
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
      ),
    );
  }
}
