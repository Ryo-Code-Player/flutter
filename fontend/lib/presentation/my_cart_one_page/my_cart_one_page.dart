import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/delet_order_screen/delet_order_screen.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';
import '../my_cart_one_page/widgets/my_cart_one_item_widget.dart';
import '../my_coupon_screen/controller/my_coupon_controller.dart';
import 'controller/my_cart_one_controller.dart';
import 'models/my_cart_one_item_model.dart';
import 'models/shipping_mothod_model.dart';

class MyCartOnePage extends StatefulWidget {
  const MyCartOnePage({super.key});

  @override
  State<MyCartOnePage> createState() => _MyCartOnePageState();
}

class _MyCartOnePageState extends State<MyCartOnePage> {
  MyCartOneController controller = Get.put(MyCartOneController());
  MyCouponController myCouponController = Get.put(MyCouponController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: getPadding(bottom: 0),
      child: Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillGray10002,
      child: Stack(
        children: [
          Padding(
            padding:getPadding(bottom: 129),
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              CustomAppBar(
                  height: getVerticalSize(81),
                  leadingWidth: 42,
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_cart".tr),
                  styleType: Style.bgFillWhiteA700),
              Expanded(
                  child: SingleChildScrollView(
                      padding: getPadding(top: 12),
                      child: GetBuilder<MyCartOneController>(
                        init: MyCartOneController(),
                        builder:(myCartOneController) =>  Padding(
                            padding: getPadding(bottom: 5),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    color: appTheme.white,
                                    child: Padding(
                                      padding: getPadding(top: 14, bottom: 14),
                                      child: CustomImageView(
                                        height: getSize(64),
                                        svgPath: ImageConstant.imgmyCartandPaymentInactiveline,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: getVerticalSize(16),
                                  ),
                                  ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(height: getVerticalSize(8));
                                      },
                                      itemCount: controller.cartItem.length,
                                      itemBuilder: (context, index) {
                                        MyCartOneItemModel model =
                                            controller.cartItem[index];
                                        return MyCartOneItemWidget(model,
                                            onTapImgStrawberry: () {

                                              showDialog(
                                                barrierDismissible: false,
                                                context: context,
                                                builder: (context) {
                                                  return AlertDialog(
                                                      insetPadding: EdgeInsets.all(16),
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(20)),
                                                      contentPadding: EdgeInsets.zero,
                                                      content:DeletOrderScreen() );
                                                },
                                              );




                                              // Get.dialog(AlertDialog(
                                              //   backgroundColor: Colors.transparent,
                                              //   contentPadding: EdgeInsets.zero,
                                              //   insetPadding:  EdgeInsets.only(left: 0),
                                              //   content: MyAddressDeleteOneScreen(
                                              //
                                              //   ),
                                              // ));


                                        });
                                      }),
                                  SizedBox(
                                    height: getVerticalSize(16),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      onTapApply();
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      color: appTheme.white,
                                      child: Padding(
                                        padding: getPadding(left: 20, right: 20,top: 16,bottom: 16),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                                child: Container(
                                              decoration: AppDecoration.fillGray10002
                                                  .copyWith(
                                                      borderRadius: BorderRadiusStyle
                                                          .roundedBorder6),
                                              child: Padding(
                                                padding: getPadding(
                                                    top: 10,
                                                    bottom: 10,
                                                    left: 16,
                                                    right: 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text( myCouponController.currentCoupon.isEmpty?"msg_enter_coupon_code".tr:myCouponController.currentCoupon,
                                                        style: myCouponController.currentCoupon.isEmpty?
                                                        CustomTextStyles
                                                            .bodyLargeGray700_1:
                                                        CustomTextStyles.bodyLargeblack
                                                    ),

                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            theme.colorScheme.primary,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(7)),
                                                      ),
                                                      child: Padding(
                                                        padding: getPadding(
                                                            top: 4,
                                                            bottom: 4,
                                                            left: 10,
                                                            right: 10),
                                                        child: Text(
                                                          "lbl_apply".tr,
                                                          style: CustomTextStyles
                                                              .bodyLargeOnPrimary,
                                                        ),
                                                      ),
                                                    )

                                                  ],
                                                ),
                                              ),
                                            )),
                                            SizedBox(
                                              width: getHorizontalSize(12),
                                            ),
                                            Text("lbl_view_all".tr,
                                                style: theme.textTheme.bodyLarge)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: getVerticalSize(16),
                                  ),
                                  Container(
                                      padding: getPadding(all: 20),
                                      decoration: AppDecoration.white,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 4),
                                                child: Text("lbl_payment_summary".tr,
                                                    style: CustomTextStyles
                                                        .titleLarge20)),
                                            Padding(
                                                padding: getPadding(top: 23),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_sub_total".tr,
                                                          style: theme
                                                              .textTheme.bodyLarge),
                                                      Text("lbl_88_00".tr,
                                                          style: theme
                                                              .textTheme.bodyLarge)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Divider()),
                                            Padding(
                                                padding: getPadding(top: 14),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_discount".tr,
                                                          style: theme
                                                              .textTheme.bodyLarge),
                                                      Text("lbl_4_50".tr,
                                                          style: CustomTextStyles
                                                              .bodyLargeGreen800)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 11),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_tax".tr,
                                                          style: theme
                                                              .textTheme.bodyLarge),
                                                      Text("lbl_2_00".tr,
                                                          style: theme
                                                              .textTheme.bodyLarge)
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 15),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(top: 1),
                                                          child: Text(
                                                              "lbl_shipping".tr,
                                                              style: theme.textTheme
                                                                  .bodyLarge)),
                                                      Text("lbl_3_00".tr,
                                                          style: theme
                                                              .textTheme.bodyLarge)
                                                    ])),


                                            ListView.builder(
                                              primary: false,
      shrinkWrap: true,
                                              itemCount: myCartOneController.shippingMethods.length,


                                              itemBuilder: (context, index) {
                                                ShippingModel data = myCartOneController.shippingMethods[index];
                                              return Padding(
                                                padding: getPadding(top: 6.5,bottom: 6.5),
                                                child: GestureDetector(
                                                  onTap: (){
                                                    myCartOneController.setCurrentShippingMethod(data.id);
                                                  },
                                                  child: Row(children: [
                                                    CustomImageView(
                                                      svgPath: myCartOneController.currentShipping == data.id?ImageConstant.imgCheakIconSelected:ImageConstant.imgCheakIconUnSelected,
                                                    ),
                                                    SizedBox(width: getHorizontalSize(8),),
                                                    Text(data.nameOfShipping!,style: theme.textTheme.bodyMedium,)]),
                                                ),
                                              );
                                            },),
                                            Padding(
                                                padding: getPadding(top: 13),
                                                child: Divider()),
                                            Padding(
                                                padding: getPadding(top: 18),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(top: 1),
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

                                ])),
                      )))
            ]),
          ),
          Padding(
            padding: getPadding(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: getMargin(top: 16),
                  padding: getPadding(all: 20),
                  decoration: AppDecoration.white,
                  child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding:
                            getPadding(top: 6, bottom: 6),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                children: [
                                  Text("lbl_grand_total".tr,
                                      style: theme
                                          .textTheme.bodySmall),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding:
                                          getPadding(top: 6),
                                          child: Text(
                                              "lbl_89_00".tr,
                                              style: theme
                                                  .textTheme
                                                  .titleMedium)))
                                ])),
                        CustomElevatedButton(
                            height: getVerticalSize(56),
                            width: getHorizontalSize(247),
                            text: "msg_proceed_to_payment".tr,
                            buttonStyle:
                            CustomButtonStyles.fillPrimary,
                            buttonTextStyle: CustomTextStyles
                                .titleMediumOnPrimaryBold,
                            onTap: () {
                              onTapProceedto();
                            })
                      ])),
            ),
          )
        ],
      )),
    );
  }

  onTapImgStrawberry() {
    Get.toNamed(AppRoutes.deletOrderScreen);
  }

  onTapApply() {
    Get.toNamed(
      AppRoutes.myCouponScreen,
    );
  }

  onTapProceedto() {
    Get.toNamed(
      AppRoutes.myCouponOneScreen,
    );
  }
}
