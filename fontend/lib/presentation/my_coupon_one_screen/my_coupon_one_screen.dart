import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';

import '../my_cart_one_page/controller/my_cart_one_controller.dart';
import '../my_cart_one_page/models/my_cart_one_item_model.dart';
import '../my_coupon_one_screen/widgets/product_item_widget.dart';
import 'controller/my_coupon_one_controller.dart';




class MyCouponOneScreen extends StatefulWidget {
  const MyCouponOneScreen({super.key});

  @override
  State<MyCouponOneScreen> createState() => _MyCouponOneScreenState();
}

class _MyCouponOneScreenState extends State<MyCouponOneScreen> {
 MyCouponOneController controller = Get.put(MyCouponOneController());
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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     Container(
                         padding: getPadding(top: 22, bottom: 22),
                         decoration: AppDecoration.white,
                         child: CustomAppBar(
                             leadingWidth: getHorizontalSize(44),
                             leading: AppbarImage(
                                 svgPath: ImageConstant.imgArrowleft,
                                 margin:
                                 getMargin(left: 20, top: 1, bottom: 1),
                                 onTap: () {
                                  onTapArrowleftone();
                                 }),
                             centerTitle: true,
                             title: AppbarTitle(text: "lbl_order_list".tr))),
                     Expanded(
                       child: Container(
                           margin: getMargin(top: 12),
                           padding: getPadding(top: 4, bottom: 4),
                           decoration: AppDecoration.white,
                           child: Container(
                               margin: getMargin(bottom: 5),
                               padding: getPadding(
                                   left: 16, top: 22, right: 16, bottom: 22),
                               decoration: AppDecoration.white,
                               child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                    Text("lbl_order_list".tr,
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: getVerticalSize(20),),
                                    ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                         return  Padding(
                                             padding: getPadding(top: 0),
                                             child: Divider(
                                                 color: appTheme.blueGray50,
                                                 endIndent: getHorizontalSize(8)));
                                        },
                                        itemCount: myCartOneController.cartItem.length,
                                        itemBuilder: (context, index) {
                                         MyCartOneItemModel model =
                                         myCartOneController.cartItem[index];
                                         return ProductItemWidget(
                                             model);
                                        }),
                                  /*  Expanded(
                                        child: Padding(
                                            padding: getPadding(bottom: 93),
                                            child: Obx(() => ListView.separated(
                                                physics:
                                                BouncingScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                 return Padding(
                                                     padding: getPadding(
                                                         top: 20.5,
                                                         bottom: 20.5),
                                                     child: Divider(
                                                         height:
                                                         getVerticalSize(
                                                             1),
                                                         thickness:
                                                         getVerticalSize(
                                                             1),
                                                         color: appTheme
                                                             .blueGray50,
                                                         endIndent:
                                                         getHorizontalSize(
                                                             8)));
                                                },
                                                itemCount: controller
                                                    .myCouponOneModelObj
                                                    .value
                                                    .productItemList
                                                    .value
                                                    .length,
                                                itemBuilder: (context, index) {
                                                 ProductItemModel model =
                                                 controller
                                                     .myCouponOneModelObj
                                                     .value
                                                     .productItemList
                                                     .value[index];
                                                 return ProductItemWidget(
                                                     model);
                                                })))),*/
SizedBox(height: getVerticalSize(40),),
                                    CustomElevatedButton(
                                        height: getVerticalSize(56),
                                        text: "msg_continue_to_checkout".tr,
                                        buttonStyle:
                                        CustomButtonStyles.fillPrimary,
                                        buttonTextStyle: CustomTextStyles
                                            .titleMediumOnPrimaryBold,
                                        onTap: () {
                                         onTapContinueto();
                                        })
                                   ]))),
                     )
                    ])))),
  );
 }


 onTapArrowleftone() {
  Get.back();
 }


 onTapContinueto() {
  Get.toNamed(
   AppRoutes.paymentScreen,
  );
 }
}








