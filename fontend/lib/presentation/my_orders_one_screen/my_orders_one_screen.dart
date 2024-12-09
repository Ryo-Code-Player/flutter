import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_icon_button.dart';
import 'package:flutterbekeryapp/widgets/custom_outlined_button.dart';

import '../../review_order_screen/review_order_screen.dart';
import '../my_cart_one_page/controller/my_cart_one_controller.dart';
import '../my_cart_one_page/models/shipping_mothod_model.dart';
import '../my_orders_two_screen/models/my_order_model.dart';
import 'controller/my_orders_one_controller.dart';

// ignore: must_be_immutable
class MyOrdersOneScreen extends StatefulWidget {
  MyOrdersOneScreen({super.key, required this.orderData});

  MyOrderItemModel orderData;

  @override
  State<MyOrdersOneScreen> createState() => _MyOrdersOneScreenState();
}

class _MyOrdersOneScreenState extends State<MyOrdersOneScreen> {
  MyOrdersOneController controller = Get.put(MyOrdersOneController());
  MyCartOneController myCartOneController = Get.put(MyCartOneController());

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
                        Get.back();
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_order_details".tr),
                  styleType: Style.bgFill),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: SingleChildScrollView(
                                padding: getPadding(top: 12),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: getPadding(all: 20),
                                        decoration: AppDecoration.white,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 7, bottom: 6),
                                                    child: Text(
                                                        "Order ID : ${widget.orderData.id}",
                                                        style: CustomTextStyles
                                                            .titleMedium16)),
                                                Padding(
                                                    padding: getPadding(top: 7),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                              height:
                                                                  getSize(10),
                                                              width:
                                                                  getSize(10),
                                                              margin: getMargin(
                                                                  top: 0,
                                                                  bottom: 0),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .buttonColor,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(5)))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 8),
                                                              child: Text(
                                                                  "Order at ${widget.orderData.time} | ${widget.orderData.date}",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge!))
                                                        ])),

                                                SizedBox(
                                                  height: getVerticalSize(20),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(12),
                                                    ),
                                                    border: Border.all(
                                                        color: theme.colorScheme
                                                            .primary),
                                                    color: appTheme.white,
                                                  ),
                                                  child: Padding(
                                                    padding: getPadding(top: 12,bottom: 12,left: 20,right:20),
                                                    child: Text(
                                                      "msg_download_invoice".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumPrimaryMedium,
                                                    ),
                                                  ),
                                                )

                                                // CustomOutlinedButton(
                                                //     height: getVerticalSize(40),
                                                //     width: getHorizontalSize(167),
                                                //     buttonStyle:
                                                //     CustomButtonStyles.fillwhite,
                                                //     text:
                                                //     "msg_download_invoice".tr,
                                                //     margin: getMargin(top: 20))
                                              ],
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: widget
                                                              .orderData.status!
                                                              .toLowerCase() ==
                                                          "delivered"
                                                      ? appTheme.greenA700
                                                          .withOpacity(0.10)
                                                      : widget.orderData.status!
                                                                  .toLowerCase() ==
                                                              "cancelled"
                                                          ? appTheme.errorColor
                                                              .withOpacity(0.10)
                                                          : appTheme.amberA700
                                                              .withOpacity(
                                                                  0.10),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              37))),
                                              child: Padding(
                                                padding: getPadding(
                                                    top: 5,
                                                    bottom: 5,
                                                    left: 10,
                                                    right: 10),
                                                child: Text(
                                                  widget.orderData.status!,
                                                  style: CustomTextStyles
                                                      .titleMediumGreenA700
                                                      .copyWith(
                                                          color: widget
                                                                      .orderData
                                                                      .status!
                                                                      .toLowerCase() ==
                                                                  "delivered"
                                                              ? appTheme
                                                                  .greenA700
                                                              : widget.orderData
                                                                          .status!
                                                                          .toLowerCase() ==
                                                                      "cancelled"
                                                                  ? appTheme
                                                                      .errorColor
                                                                  : appTheme
                                                                      .amberA700),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),

                                        // Column(
                                        //     crossAxisAlignment:
                                        //     CrossAxisAlignment.start,
                                        //     mainAxisAlignment:
                                        //     MainAxisAlignment.start,
                                        //     children: [
                                        //      Row(
                                        //          mainAxisAlignment:
                                        //          MainAxisAlignment
                                        //              .spaceBetween,
                                        //          children: [
                                        //           Padding(
                                        //               padding: getPadding(
                                        //                   top: 7, bottom: 6),
                                        //               child: Text(
                                        //                   "msg_order_id_576404"
                                        //                       .tr,
                                        //                   style: CustomTextStyles
                                        //                       .titleMedium16)),
                                        //           CustomElevatedButton(
                                        //               height:
                                        //               getVerticalSize(34),
                                        //               width:
                                        //               getHorizontalSize(
                                        //                   87),
                                        //               text:
                                        //               "lbl_delivered".tr,
                                        //               buttonStyle:
                                        //               CustomButtonStyles
                                        //                   .fillLightGreenTL17,
                                        //               buttonTextStyle:
                                        //               CustomTextStyles
                                        //                   .titleMediumGreenA700)
                                        //          ]),
                                        //      Padding(
                                        //          padding: getPadding(top: 6),
                                        //          child: Row(
                                        //              crossAxisAlignment:
                                        //              CrossAxisAlignment
                                        //                  .start,
                                        //              children: [
                                        //               Container(
                                        //                   height: getSize(10),
                                        //                   width: getSize(10),
                                        //                   margin: getMargin(
                                        //                       top: 3,
                                        //                       bottom: 6),
                                        //                   decoration: BoxDecoration(
                                        //                       color: theme
                                        //                           .colorScheme
                                        //                           .primary,
                                        //                       borderRadius:
                                        //                       BorderRadius
                                        //                           .circular(
                                        //                           getHorizontalSize(5)))),
                                        //               Padding(
                                        //                   padding: getPadding(
                                        //                       left: 8),
                                        //                   child: Text(
                                        //                       "msg_order_at_6_35_pm"
                                        //                           .tr,
                                        //                       style: theme
                                        //                           .textTheme
                                        //                           .bodyLarge))
                                        //              ])),
                                        //      CustomOutlinedButton(
                                        //          height: getVerticalSize(40),
                                        //          width: getHorizontalSize(166),
                                        //          text:
                                        //          "msg_download_invoice".tr,
                                        //          margin: getMargin(top: 20))
                                        //     ])
                                      ),
                                      Container(
                                          width: double.maxFinite,
                                          margin: getMargin(top: 16),
                                          padding: getPadding(all: 20),
                                          decoration: AppDecoration.white,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 2),
                                                    child: Text("lbl_item_1".tr,
                                                        style: CustomTextStyles
                                                            .titleMedium16)),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 11),
                                                    child: Column(
                                                      children: [
                                                        Row(children: [
                                                          Container(
                                                              height:
                                                                  getSize(95),
                                                              width:
                                                                  getSize(95),
                                                              padding:
                                                                  getPadding(
                                                                      left: 22,
                                                                      top: 10,
                                                                      right: 22,
                                                                      bottom:
                                                                          10),
                                                              decoration: AppDecoration
                                                                  .fillGray100
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder16),
                                                              child: CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle37614,
                                                                  height:
                                                                      getVerticalSize(
                                                                          75),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          51),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 7,
                                                                      bottom:
                                                                          7),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_rainbow_cupcake"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .titleMedium16),
                                                                    Padding(
                                                                        padding:
                                                                            getPadding(top: 13),
                                                                        child: RichText(
                                                                            text: TextSpan(children: [
                                                                              TextSpan(text: "lbl_quantity2".tr, style: CustomTextStyles.bodyMediumGray700_1),
                                                                              TextSpan(text: "lbl_12".tr, style: theme.textTheme.bodyMedium)
                                                                            ]),
                                                                            textAlign: TextAlign.left)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                12),
                                                                        child: Text(
                                                                            "lbl_15_00"
                                                                                .tr,
                                                                            style:
                                                                                theme.textTheme.bodyMedium))
                                                                  ]))
                                                        ]),
                                                        widget.orderData.status!
                                                                    .toLowerCase() ==
                                                                'delivered'
                                                            // 'completed'
                                                            ? Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      RatingBar
                                                                          .builder(
                                                                        initialRating:
                                                                            0.0,
                                                                        minRating:
                                                                            0,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        allowHalfRating:
                                                                            false,
                                                                        itemCount:
                                                                            5,
                                                                        ignoreGestures:
                                                                            false,
                                                                        itemSize:
                                                                            getSize(20),
                                                                        itemBuilder:
                                                                            (context, _) =>
                                                                                Icon(
                                                                          Icons
                                                                              .star,
                                                                          color:
                                                                              Colors.amber,
                                                                        ),
                                                                        unratedColor:
                                                                            appTheme.gray400,
                                                                        onRatingUpdate:
                                                                            (rating) {
                                                                          Get.to(ReviewOrder(
                                                                              rating: rating,
                                                                              orderModel: widget.orderData));
                                                                        },
                                                                      ),
                                                                      GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            // getReviewListUpdate( reviewList);
                                                                          },
                                                                          child:
                                                                              Text("Rate this product now"))
                                                                    ],
                                                                  ),
                                                                ],
                                                              )
                                                            : Container()
                                                      ],
                                                    ))
                                              ])),
                                      Container(
                                          margin: getMargin(top: 16),
                                          padding: getPadding(
                                              left: 20,
                                              top: 22,
                                              right: 20,
                                              bottom: 22),
                                          decoration: AppDecoration.white,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_customer".tr,
                                                    style: CustomTextStyles
                                                        .titleLarge20),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 19),
                                                    child: Row(children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgEllipse22555x55,
                                                          height: getSize(55),
                                                          width: getSize(55),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      27))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 14,
                                                              top: 17,
                                                              bottom: 17),
                                                          child: Text(
                                                              "lbl_ronald_richards2"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .titleMedium16)),
                                                      Spacer(),
                                                      CustomIconButton(
                                                          height: 44,
                                                          width: 44,
                                                          margin: getMargin(
                                                              top: 5,
                                                              bottom: 5),
                                                          padding: getPadding(
                                                              all: 10),
                                                          decoration:
                                                              IconButtonStyleHelper
                                                                  .fillPrimary,
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCallOnprimary))
                                                    ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 19),
                                                    child: Text(
                                                        "msg_shipping_address"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeGray700_1)),
                                                Padding(
                                                    padding: getPadding(top: 9),
                                                    child: Text(
                                                        "msg_4140_parker_rd".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge)),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 16),
                                                    child: Divider(
                                                        color: appTheme
                                                            .blueGray50)),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 19),
                                                    child: Text(
                                                        "msg_billing_address"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeGray700_1)),
                                                Padding(
                                                    padding: getPadding(top: 9),
                                                    child: Text(
                                                        "msg_4140_parker_rd".tr,
                                                        style: theme.textTheme
                                                            .bodyLarge)),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 16),
                                                    child: Divider(
                                                        color: appTheme
                                                            .blueGray50)),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 18),
                                                    child: Text(
                                                        "lbl_order_note".tr,
                                                        style: CustomTextStyles
                                                            .bodyLargeGray700_1)),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 10),
                                                    child: Text(
                                                        "msg_i_need_the_best"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .bodyLarge)),
                                                SizedBox(
                                                  height: getVerticalSize(20),
                                                ),
                                                if (widget.orderData.status!
                                                            .toLowerCase() ==
                                                        'completed' ||
                                                    widget.orderData.status!
                                                            .toLowerCase() ==
                                                        'cancelled')
                                                  SizedBox()
                                                else
                                                  Container(
                                                    width: double.infinity,
                                                    color: appTheme.white,
                                                    child: GestureDetector(
                                                        onTap: () {
                                                          Get.dialog(
                                                              AlertDialog(
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            contentPadding:
                                                                EdgeInsets.zero,
                                                            insetPadding:
                                                                EdgeInsets.only(
                                                                    left: 0),
                                                            content: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      374),
                                                              padding:
                                                                  getPadding(
                                                                      all: 30),
                                                              decoration: AppDecoration
                                                                  .white
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder16),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                      "Are you sure you want to delete this order?",
                                                                      maxLines:
                                                                          2,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleMedium),
                                                                  Padding(
                                                                    padding: getPadding(
                                                                        top: 30,
                                                                        bottom:
                                                                            10),
                                                                    child: Row(
                                                                      children: [
                                                                        Expanded(
                                                                            child: CustomOutlinedButton(
                                                                                text: "lbl_no".tr,
                                                                                margin: getMargin(right: 10),
                                                                                buttonStyle: CustomButtonStyles.fillwhite,
                                                                                onTap: () {
                                                                                  Get.back();
                                                                                })),
                                                                        Expanded(
                                                                            child: CustomOutlinedButton(
                                                                                text: "lbl_yes".tr,
                                                                                margin: getMargin(left: 10),
                                                                                buttonStyle: CustomButtonStyles.fillPrimary,
                                                                                buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryBold,
                                                                                onTap: () {
                                                                                  Get.back();
                                                                                })),
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ));
                                                        },
                                                        child: Text(
                                                            "lbl_cancel_order"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .titleMediumRed50001_1)),
                                                  ),
                                              ])),
                                      SizedBox(
                                        height: getVerticalSize(16),
                                      ),
                                      Container(
                                          padding: getPadding(all: 20),
                                          decoration: AppDecoration.white,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Text(
                                                        "lbl_payment_summary"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .titleLarge20)),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 23),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                              "lbl_sub_total"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge),
                                                          Text("lbl_88_00".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider()),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 14),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                              "lbl_discount".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge),
                                                          Text("lbl_4_50".tr,
                                                              style: CustomTextStyles
                                                                  .bodyLargeGreen800)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 11),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("lbl_tax".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge),
                                                          Text("lbl_2_00".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 15),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "lbl_shipping"
                                                                      .tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge)),
                                                          Text("lbl_3_00".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge)
                                                        ])),
                                                ListView.builder(
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  itemCount: myCartOneController
                                                      .shippingMethods.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    ShippingModel data =
                                                        myCartOneController
                                                                .shippingMethods[
                                                            index];
                                                    return Padding(
                                                      padding: getPadding(
                                                          top: 6.5,
                                                          bottom: 6.5),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          // myCartOneController.setCurrentShippingMethod(data.id);
                                                        },
                                                        child: Row(children: [
                                                          CustomImageView(
                                                            svgPath: myCartOneController
                                                                        .currentShipping ==
                                                                    data.id
                                                                ? ImageConstant
                                                                    .imgCheakIconSelected
                                                                : ImageConstant
                                                                    .imgCheakIconUnSelected,
                                                          ),
                                                          SizedBox(
                                                            width:
                                                                getHorizontalSize(
                                                                    8),
                                                          ),
                                                          Text(
                                                            data.nameOfShipping!,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium,
                                                          )
                                                        ]),
                                                      ),
                                                    );
                                                  },
                                                ),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 13),
                                                    child: Divider()),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 18),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "msg_total_payment_amount"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .titleMedium16)),
                                                          Text("lbl_89_00".tr,
                                                              style: CustomTextStyles
                                                                  .titleMedium16)
                                                        ]))
                                              ])),
                                    ])))
                      ])))),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}
