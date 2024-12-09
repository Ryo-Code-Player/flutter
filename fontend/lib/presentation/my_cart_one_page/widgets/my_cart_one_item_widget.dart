import '../controller/my_cart_one_controller.dart';
import '../models/my_cart_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

// ignore: must_be_immutable
class MyCartOneItemWidget extends StatelessWidget {
  MyCartOneItemWidget(
    this.myCartOneItemModelObj, {
    Key? key,
    this.onTapImgStrawberry,
  }) : super(
          key: key,
        );

  MyCartOneItemModel myCartOneItemModelObj;

  var controller = Get.find<MyCartOneController>();

  VoidCallback? onTapImgStrawberry;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(
        all: 20,
      ),
      decoration: AppDecoration.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: getSize(95),
                width: getSize(95),
                padding: getPadding(
                  left: 22,
                  top: 10,
                  right: 22,
                  bottom: 10,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: CustomImageView(
                  imagePath: myCartOneItemModelObj.image!,
                  height: getVerticalSize(75),
                  width: getHorizontalSize(51),
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(width: getHorizontalSize(16),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    myCartOneItemModelObj.title!,
                    style: CustomTextStyles.titleMedium16,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 6,
                    ),
                    child: Text(
                      myCartOneItemModelObj.price!,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_size2".tr,
                                  style: CustomTextStyles.bodyMediumGray700_1,
                                ),
                                TextSpan(
                                  text: myCartOneItemModelObj.size!,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 15,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_qty".tr,
                                  style: CustomTextStyles.bodyMediumGray700_1,
                                ),
                                TextSpan(
                                  text: myCartOneItemModelObj.qty!.toString(),
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgTrash,
                height: getSize(20),
                width: getSize(20),
                onTap: () {
                  onTapImgStrawberry?.call();
                },
              ),
              Padding(
                padding: getPadding(
                  top: 38,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: appTheme.gray10002,
                      ),
                      child: Padding(
                        padding: getPadding(all: 5),
                        child: CustomImageView(
                          height: getSize(18),
                          width: getSize(18),
                          svgPath: ImageConstant.imgMenuPrimary,

                        ),
                      ),
                    ),
                    // Container(
                    //   height: getSize(28),
                    //   width: getSize(28),
                    //
                    //   decoration: AppDecoration.fillGray10002.copyWith(
                    //     borderRadius: BorderRadiusStyle.roundedBorder16,
                    //   ),
                    //   child: Padding(
                    //     padding: getPadding(all: 5),
                    //     child: CustomImageView(
                    //       height: getSize(18),
                    //       width: getSize(18),
                    //       svgPath: ImageConstant.imgMenuPrimary,
                    //
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                        top: 6,
                        bottom: 4,
                        right: 12
                      ),
                      child: Text(
                        "lbl_01".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: appTheme.gray10002,
                      ),
                      child: Padding(
                        padding: getPadding(all: 5),
                        child: CustomImageView(
                          height: getSize(18),
                          width: getSize(18),
                          svgPath: ImageConstant.imgPlus,

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )









      //
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //
      //     Padding(
      //       padding: getPadding(
      //         left: 16,
      //         top: 8,
      //         bottom: 6,
      //       ),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: [
      //           Text(
      //             myCartOneItemModelObj.title!,
      //             style: CustomTextStyles.titleMedium16,
      //           ),
      //           Padding(
      //             padding: getPadding(
      //               top: 6,
      //             ),
      //             child: Text(
      //               myCartOneItemModelObj.price!,
      //               style: theme.textTheme.bodyLarge,
      //             ),
      //           ),
      //           Padding(
      //             padding: getPadding(
      //               top: 15,
      //             ),
      //             child: Row(
      //               children: [
      //                 Padding(
      //                   padding: getPadding(
      //                     bottom: 1,
      //                   ),
      //                   child: RichText(
      //                     text: TextSpan(
      //                       children: [
      //                         TextSpan(
      //                           text: "lbl_size2".tr,
      //                           style: CustomTextStyles.bodyMediumGray700_1,
      //                         ),
      //                         TextSpan(
      //                           text: myCartOneItemModelObj.size!,
      //                           style: theme.textTheme.bodyMedium,
      //                         ),
      //                       ],
      //                     ),
      //                     textAlign: TextAlign.left,
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: getPadding(
      //                     left: 15,
      //                   ),
      //                   child: RichText(
      //                     text: TextSpan(
      //                       children: [
      //                         TextSpan(
      //                           text: "lbl_qty".tr,
      //                           style: CustomTextStyles.bodyMediumGray700_1,
      //                         ),
      //                         TextSpan(
      //                           text: myCartOneItemModelObj.qty!.toString(),
      //                           style: theme.textTheme.bodyMedium,
      //                         ),
      //                       ],
      //                     ),
      //                     textAlign: TextAlign.left,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Padding(
      //       padding: getPadding(
      //         left: 24,
      //         top: 4,
      //         bottom: 5,
      //       ),
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.end,
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: [
      //           CustomImageView(
      //             svgPath: ImageConstant.imgTrash,
      //             height: getSize(20),
      //             width: getSize(20),
      //             onTap: () {
      //               onTapImgStrawberry?.call();
      //             },
      //           ),
      //           Padding(
      //             padding: getPadding(
      //               top: 38,
      //             ),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.end,
      //               children: [
      //                 Container(
      //                   padding: getPadding(
      //                     all: 5,
      //                   ),
      //                   decoration: AppDecoration.fillGray10002.copyWith(
      //                     borderRadius: BorderRadiusStyle.roundedBorder16,
      //                   ),
      //                   child: Container(
      //                     height: getSize(18),
      //                     width: getSize(18),
      //                     decoration: AppDecoration.fillGray10002,
      //                     child: CustomImageView(
      //                       svgPath: ImageConstant.imgMenuPrimary,
      //                       height: getSize(18),
      //                       width: getSize(18),
      //                       alignment: Alignment.center,
      //                     ),
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: getPadding(
      //                     left: 12,
      //                     top: 6,
      //                     bottom: 4,
      //                   ),
      //                   child: Text(
      //                     "lbl_01".tr,
      //                     style: theme.textTheme.bodyMedium,
      //                   ),
      //                 ),
      //                 Container(
      //                   margin: getMargin(
      //                     left: 12,
      //                   ),
      //                   padding: getPadding(
      //                     all: 5,
      //                   ),
      //                   decoration: AppDecoration.fillGray10002.copyWith(
      //                     borderRadius: BorderRadiusStyle.roundedBorder16,
      //                   ),
      //                   child: Container(
      //                     height: getSize(18),
      //                     width: getSize(18),
      //                     decoration: AppDecoration.fillGray10002,
      //                     child: CustomImageView(
      //                       svgPath: ImageConstant.imgPlus,
      //                       height: getSize(18),
      //                       width: getSize(18),
      //                       alignment: Alignment.center,
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
