import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';

import '../edit_address_screen/edit_address_screen.dart';
import '../my_address_screen/controller/my_address_controller.dart';
import '../my_cards_details_screen/models/my_cards_details_model.dart';
import '../my_cart_one_page/controller/my_cart_one_controller.dart';
import '../my_cart_one_page/models/shipping_mothod_model.dart';
import 'controller/payment_controller.dart';


class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
 PaymentController paymentController = Get.put(PaymentController());
 MyAddressController myAddressController = Get.put(MyAddressController());
 var items = [
   "Edit",
 ];
 // MyCartOneController myCartOneController = Get.put(MyCartOneController());
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
           appBar:  CustomAppBar(
               height: getVerticalSize(81),
               leadingWidth: 42,
               centerTitle: true,
               title: AppbarTitle(text: "lbl_payment".tr),
               styleType: Style.bgFillWhiteA700),
           backgroundColor
               : appTheme.gray10002,
           body: GetBuilder<MyCartOneController>(
            init: MyCartOneController(),
             builder:(myCartOneController) =>  GetBuilder<PaymentController>(
               init: PaymentController(),
               builder:(controller) =>  SizedBox(
                   width: double.maxFinite,
                   child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [

                        Expanded(
                            child: SingleChildScrollView(
                                padding: getPadding(top: 12),
                                child: Padding(
                                    padding: getPadding(bottom: 5),
                                    child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                         Container(
                                          width: double.infinity,
                                          color: appTheme.white,
                                          child: Padding(
                                           padding: getPadding(top: 14, bottom: 14),
                                           child: CustomImageView(
                                            height: getSize(64),
                                            svgPath: ImageConstant.imgPaymentLine,
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

// SizedBox(height: getVerticalSize(16),),


                                          Container(
                                              width: double.maxFinite,
                                              margin: getMargin(top: 16),
                                              padding: getPadding(
                                                  left: 18,
                                                  top: 16,
                                                  right: 0,
                                                  bottom: 16),
                                              decoration: AppDecoration.white,
                                              child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 6,
                                                                bottom: 2),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_my_address"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleMedium),
                                                                  Padding(
                                                                      padding:
                                                                      getPadding(
                                                                          top:
                                                                          7),
                                                                      child: Text(
                                                                          "msg_4140_parker_rd"
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .bodyLarge))
                                                                ]))),
                                                    DropdownButton(
                                                      underline: SizedBox(),
                                                      dropdownColor:
                                                      appTheme.white,

                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              3)),
                                                      padding:
                                                      EdgeInsets.zero,
                                                      icon: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgOverflowmenu,
                                                          height:
                                                          getSize(20),
                                                          width:
                                                          getSize(20),
                                                          margin: getMargin(
                                                              left: 20,
                                                              bottom: 0,
                                                              right: 20)),
                                                      items: items.map(
                                                              (String items) {
                                                            return DropdownMenuItem(
                                                              value: items,
                                                              child:
                                                              GestureDetector(
                                                                onTap: () {
                                                                  Get.back();
                                                                  Get.to(EditAddressScreen(
                                                                      addressData:
                                                                      myAddressController
                                                                          .getAddress[0]));
                                                                },
                                                                child: Padding(
                                                                  padding:
                                                                  getPadding(
                                                                      top:
                                                                      0,
                                                                      bottom:
                                                                      0),
                                                                  child: Center(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                      children: [
                                                                        CustomImageView(
                                                                          svgPath:
                                                                          ImageConstant.imgeditIcon,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                          getHorizontalSize(8),
                                                                        ),
                                                                        Text(
                                                                          items,
                                                                          style:
                                                                          CustomTextStyles.txtSFProTextRegular16,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }).toList(),
                                                      // After selecting the desired option,it will
                                                      // change button value to selected value
                                                      onChanged: (String?
                                                      newValue) {
                                                        setState(() {
                                                          // dropdownvalue = newValue!;
                                                        });
                                                      },
                                                    ),
                                                  ])),


                                          /*GestureDetector(
                                            onTap: (){
                                              onTapAddnewaddress();
                                            },
                                            child: Container(
                                              color: appTheme.white,
                                              width: double.infinity,
                                              child:
                                              /*
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "msg_choose_your_payment"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleLarge20)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 21),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCheckmarkIndigo800,
                                                            height: getSize(28),
                                                            width: getSize(28)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 5,
                                                                bottom: 2),
                                                            child: Text(
                                                                "lbl_paypal".tr,
                                                                style: CustomTextStyles
                                                                    .titleMedium16)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgContrast,
                                                            height: getSize(24),
                                                            width: getSize(24))
                                                      ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 26),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgIcmoney1,
                                                            height: getSize(28),
                                                            width: getSize(28)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 5,
                                                                bottom: 2),
                                                            child: Text(
                                                                "msg_cash_on_delivery"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleMedium16)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgEye,
                                                            height: getSize(24),
                                                            width: getSize(24))
                                                      ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 26),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgProfile,
                                                            height: getSize(28),
                                                            width: getSize(28)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 5,
                                                                bottom: 2),
                                                            child: Text(
                                                                "lbl_stripe".tr,
                                                                style: CustomTextStyles
                                                                    .titleMedium16)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgContrast,
                                                            height: getSize(24),
                                                            width: getSize(24))
                                                      ]))
                                                ])
                                               */





                                              Padding(
                                                padding: getPadding(top: 32,bottom: 32),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        margin: getMargin(right: 12),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgPlusBlack900)),
                                                    Text("lbl_add_new_address".tr,style:  theme.textTheme.titleMedium!,),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),*/






                                         Container(
                                             margin: getMargin(top: 16),
                                             decoration: AppDecoration.white,
                                             child: Column(
                                                 crossAxisAlignment:
                                                 CrossAxisAlignment.start,
                                                 mainAxisAlignment:
                                                 MainAxisAlignment.center,
                                                 children: [
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 20,left: 20,right: 20),
                                                      child: Text(
                                                          "msg_choose_your_payment"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleLarge20)),




                                                   ListView.builder(
padding: getPadding(left: 20,right: 20),
                                                     itemCount: controller.myCardsDetailsModelObj.length,
                                                     primary: false,
                                                     shrinkWrap: true,
                                                     itemBuilder: (context, index) {
                                                       MyCardsDetailsModel data = controller.myCardsDetailsModelObj[index];
                                                       return data.isActive! ?Padding(
                                                         padding:getPadding(top: 13,bottom: 13),
                                                         child: GestureDetector(
                                                           onTap: (){
                                                             controller.setCurrentPayment(data.id);
                                                           },
                                                           child: Container(
                                                             color: appTheme.white,
                                                             child: Row(children: [
                                                               CustomImageView(
                                                                   svgPath: data.icon,
                                                                   height: getSize(28),
                                                                   width: getSize(28)),
                                                               Padding(
                                                                   padding: getPadding(
                                                                       left: 16,
                                                                       top: 5,
                                                                       bottom: 2),
                                                                   child: Text(
                                                                       data.title!,
                                                                       style: CustomTextStyles
                                                                           .titleMedium16)),
                                                               Spacer(),
                                                               CustomImageView(
                                                                   svgPath:
                                                                   controller.currentPaymentId == data.id?  ImageConstant.imgraduioActive:ImageConstant.imgraduioInActive,
                                                                   height: getSize(24),
                                                                   width: getSize(24))
                                                             ]),
                                                           ),
                                                         ),
                                                       ):SizedBox(height: getVerticalSize(0),);
                                                     },),
                                                 ])),
                                          SizedBox(height: getVerticalSize(20),),
                                        ]))))
                       ])),
             ),
           ),
           bottomNavigationBar: CustomElevatedButton(
               height: getVerticalSize(56),
               text: "lbl_confirm_payment".tr,
               margin: getMargin(left: 20, right: 12, bottom: 24),
               buttonStyle: CustomButtonStyles.fillPrimary,
               buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryBold,
               onTap: () {
                onTapConfirmpayment();
               }))),
  );
 }


 onTapConfirmpayment() {
  Get.toNamed(
   AppRoutes.orderConfirmScreen,
  );
 }

 onTapAddnewaddress() {
  Get.toNamed(
   AppRoutes.addNewAddressScreen,
  );
 }

}






