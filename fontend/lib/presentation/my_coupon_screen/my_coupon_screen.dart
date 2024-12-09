import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';
import 'package:flutterbekeryapp/widgets/custom_text_form_field.dart';
import 'controller/my_coupon_controller.dart';
import 'models/my_coupon_model.dart';



class MyCouponScreen extends StatefulWidget {
  const MyCouponScreen({super.key});

  @override
  State<MyCouponScreen> createState() => _MyCouponScreenState();
}

class _MyCouponScreenState extends State<MyCouponScreen> {
  MyCouponController myCouponController = Get.put(MyCouponController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return false;
      },
      child: ColorfulSafeArea(
          color: appTheme.white,
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: appTheme.gray10002,
              body: GetBuilder<MyCouponController>(
                init: MyCouponController(),
                builder:(controller) =>  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: getPadding(top: 21, bottom: 21),
                              decoration: AppDecoration.white,
                              child: CustomAppBar(
                                  leadingWidth: getHorizontalSize(44),
                                  leading: AppbarImage(
                                      svgPath: ImageConstant.imgArrowleft,
                                      margin: getMargin(left: 20, bottom: 3),
                                      onTap: () {
                                       Get.back();
                                      }),
                                  centerTitle: true,
                                  title: AppbarTitle(text: "lbl_my_coupon".tr))),



                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                margin: getMargin(top: 12),
                                padding: getPadding(
                                    left: 20, top: 23, right: 20, bottom: 23),
                                decoration: AppDecoration.white,
                                child:   controller.coupons.isEmpty?Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGroup,
                                        height: getVerticalSize(92),
                                        width: getHorizontalSize(128)),
                                    Padding(
                                        padding: getPadding(top: 37),
                                        child: Text("msg_no_coupon_available".tr,
                                            style: CustomTextStyles.titleLarge20)),
                                    Container(
                                        width: getHorizontalSize(271),
                                        margin: getMargin(top: 12),
                                        child: Text("msg_but_don_t_worry".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme.textTheme.bodyLarge))
                                  ],
                                ):Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_have_a_coupon_code".tr,
                                          style: theme.textTheme.bodyLarge),
                                      Padding(
                                          padding: getPadding(top: 8),
                                          child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                CustomTextFormField(
                                                    width: getHorizontalSize(259),
                                                    controller: controller
                                                        .inputlabeloneController,
                                                    hintText: "lbl_enter_here".tr,
                                                    hintStyle: CustomTextStyles
                                                        .bodyLargeGray700_1,
                                                    contentPadding: getPadding(
                                                        left: 12,
                                                        top: 18,
                                                        right: 12,
                                                        bottom: 18),
                                                    borderDecoration:
                                                    TextFormFieldStyleHelper
                                                        .fillGray,
                                                    fillColor: appTheme.gray10001),
                                                CustomElevatedButton(
                                                  onTap: (){
                                                    Get.back();
                                                  },
                                                    height: getVerticalSize(56),
                                                    width: getHorizontalSize(107),
                                                    text: "lbl_apply".tr,
                                                    buttonStyle: CustomButtonStyles
                                                        .fillPrimary,
                                                    buttonTextStyle: CustomTextStyles
                                                        .titleMediumOnPrimaryBold)
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 40),
                                          child: Text("lbl_promo_code".tr,
                                              style: CustomTextStyles
                                                  .titleMediumMedium)),

                                      ListView.builder(
                                        primary: false,
                                        shrinkWrap: true,
                                        itemCount: controller.coupons.length,
                                        itemBuilder: (context, index) {
                                          MyCouponModel data = controller.coupons[index];
                                        return Padding(
                                          padding: getPadding(top: 8,bottom: 8),
                                          child: Container(
                                            decoration:AppDecoration.fillGray10002
                                                .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder6),
                                            child: GestureDetector(
                                              onTap: (){
                                                controller.setCurrentCouponCode(data.couponCode);
                                              },
                                              child: Padding(
                                                padding:getPadding(left: 20,right: 20,top: 22,bottom: 22),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(data.couponCode!,style:  CustomTextStyles.titleMediumMedium,),
                                                    CustomImageView(
                                                      color: controller.currentCoupon == data.couponCode?appTheme.buttonColor:appTheme.black900,
                                                      height: getSize(24),
                                                        width: getSize(24),
                                                        svgPath:
                                                        ImageConstant.imgFileBlack900)
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },),

                                    ])),
                              )
                        ])),
              ))),
    );
  }


  onTapArrowleftone() {
    Get.back();
  }
}




