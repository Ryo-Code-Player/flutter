import 'package:colorful_safe_area/colorful_safe_area.dart';

import '../my_orders_two_screen/controller/my_orders_two_controller.dart';
import 'controller/order_confirm_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';




class OrderConfirmScreen extends StatefulWidget {
  const OrderConfirmScreen({super.key});

  @override
  State<OrderConfirmScreen> createState() => _OrderConfirmScreenState();
}

class _OrderConfirmScreenState extends State<OrderConfirmScreen> {
  OrderConfirmController orderConfirmController = Get.put(OrderConfirmController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: ColorfulSafeArea(
        color: appTheme.white,
        child: Scaffold(
          backgroundColor: theme.colorScheme.onPrimary,
          body: GetBuilder<MyOrdersTwoController>(
            init: MyOrdersTwoController(),
            builder:(controller) => SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgTickcircle,
                    height: getSize(175),
                    width: getSize(175),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "msg_your_order_has_been".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 27,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_status".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: "lbl_processing".tr,
                            style: CustomTextStyles.titleMediumAmber700,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 26,
                    ),
                    child: Text(
                      "lbl_id_3655".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 29,
                    ),
                    child: Text(
                      "msg_thank_you_for_shopping".tr,
                      style: CustomTextStyles.bodyLarge_1,
                    ),
                  ),
                  CustomElevatedButton(
                    onTap: (){
                      controller.isNavigateOrderConfirmScreen = true;
                      controller.update();
                      Get.toNamed(AppRoutes.myOrdersTwoScreen);
                    },
                    height: getVerticalSize(53),
                    width: getHorizontalSize(164),
                    text: "lbl_continue".tr,
                    margin: getMargin(
                      top: 23,
                      bottom: 5,
                    ),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL7,
                    buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryBold,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




