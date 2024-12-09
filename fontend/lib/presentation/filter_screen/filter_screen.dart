import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import '../../core/utils/slider/src/common.dart';
import '../../core/utils/slider/src/range_slider.dart';
import '../../core/utils/slider/src/slider_shapes.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/filter_controller.dart';

import 'package:flutter/material.dart';



class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  FilterController filterSheetController = Get.put(FilterController());
  SfRangeValues _currentRangeValues =  SfRangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return false;
      },
      child: ColorfulSafeArea(
        color: appTheme.white,
        child:  Scaffold(
          backgroundColor: appTheme.gray10002,
          appBar: CustomAppBar(
              height: getVerticalSize(81),
              leadingWidth: 42,
              leading: AppbarImage(
                  height: getVerticalSize(24),
                  width: getHorizontalSize(26),
                  svgPath: ImageConstant.imgArrowleft,
                  margin: getMargin(left: 16, top: 29, bottom: 28),
                  onTap: () {
                    Get.back();
                  }),
              centerTitle: true,
              title: AppbarTitle(text:"Filter"),
              styleType: Style.bgFillWhiteA700),

          body: GetBuilder<FilterController>(
            init: FilterController(),
            builder: (controller) =>
                SafeArea(child:
                Stack(
                  children: [
                    Column(
                      children: [
                       SizedBox(height: getVerticalSize(10),),
                        Expanded(
                          child: ListView(

                            children: [
                              Container(
                                width: double.infinity,
                                color: appTheme.white,
                                child: Padding(
                                  padding: getPadding(left: 16,right: 16,top: 8,bottom: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Sort by",style: CustomTextStyles.txtHeadline,),
                                     SizedBox(height: getVerticalSize(16),),

                                      filter_option(1, "Top Rated"),
                                      SizedBox(height: getVerticalSize(16),),
                                      filter_option(2, "Favorite"),
                                      SizedBox(height: getVerticalSize(16),),
                                      filter_option(3, "Discount"),

                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: getVerticalSize(20),),
                              Container(
                                width: double.infinity,
                                color: appTheme.white,
                                child: Padding(
                                  padding: getPadding(left: 16,right: 16,top: 8,bottom: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Pricing range",style: CustomTextStyles.txtHeadline,),
                                      SizedBox(height: getVerticalSize(16),),
                                      SfRangeSliderTheme(
                                        data: SfRangeSliderThemeData(
                                            activeTrackHeight:getVerticalSize(6),
                                            inactiveTrackHeight: getVerticalSize(8),
                                            tooltipBackgroundColor: Colors.transparent,
                                            tooltipTextStyle:CustomTextStyles.txtBodygray,




                                            thumbStrokeWidth:getHorizontalSize(5),
                                            thumbStrokeColor: appTheme.secondaryColor,
                                            thumbColor: appTheme.buttonColor,
                                            activeTrackColor:appTheme.buttonColor,
                                            thumbRadius: getHorizontalSize(12),
                                            trackCornerRadius: getHorizontalSize(10)

                                        ),
                                        child: Padding(
                                          padding:getPadding(right: 18),
                                          child: SfRangeSlider(
                                            // showLabels: true,
                                            inactiveColor: appTheme.gray300,
                                            min: 50.0,
                                            max: 5000.0,
                                            values: _currentRangeValues,
                                            onChanged: (SfRangeValues values) {
                                              setState(() {
                                                _currentRangeValues = values;
                                              });
                                              // Provider.of<OccasionProvider>(context,
                                              //     listen: false)
                                              //     .change(values);
                                            },
                                            overlayShape: const SfOverlayShape(),
                                            shouldAlwaysShowTooltip: true,

                                            enableTooltip: true,
                                            tooltipShape: const SfPaddleTooltipShape(),
                                            tooltipTextFormatterCallback:
                                                (dynamic actualValue, String formattedText) {
                                              double d = double.parse(formattedText);
                                              int i = d.round();
                                              return "\$${NumberFormat.compact().format(i)}";
                                            },
                                          ),
                                        ),
                                      ),
                                     SizedBox(height: getVerticalSize(16),),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: getVerticalSize(20),),
                              Container(
                                width: double.infinity,
                                color: appTheme.white,
                                child: Padding(
                                  padding: getPadding(left: 16,right: 16,top: 8,bottom: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Tags",style: CustomTextStyles.txtHeadline,),
                                      SizedBox(height: getVerticalSize(16),),
                                      Padding(
                                          padding:getPadding(top: 16),
                                          child: Wrap(
                                              runSpacing: getHorizontalSize(11),
                                              spacing: getHorizontalSize(16),

                                              children: List<Widget>.generate(controller.tags.length,
                                                      (index) {
                                                    var model =
                                                    controller.tags[index];
                                                    return GestureDetector(
                                                      onTap: (){
                                                        controller.setCurrentTab(index);
                                                      },
                                                      child: Container(
                                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(8)),
                                                              border: Border.all(color:controller.currentTab==index?appTheme.buttonColor:appTheme.black900),
                                                              color: controller.currentTab==index?appTheme.buttonColor:appTheme.white),
                                                          child: Padding(
                                                            padding: getPadding(left: 16,top: 8,bottom: 8,right: 16),
                                                            child:
                                                            Text(model,style: CustomTextStyles.txtBody.copyWith(
                                                              color: controller.currentTab==index?appTheme.white:appTheme.buttonColor
                                                            ),)
                                                          )),
                                                    );
                                                  }))),
                                     SizedBox(height: getVerticalSize(92),),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        color: appTheme.white,
                        child: Padding(
                          padding: getPadding(top: 20,bottom: 20,left: 23,right: 23),
                          child: Row(
                            children: [
                              Expanded(child:
                          CustomOutlinedButton(

                          text: "Reset",
                              margin: getMargin(right: 10),
                              height: getVerticalSize(56),
                              buttonStyle: CustomButtonStyles.fillwhite,
                              onTap: () {
                                Get.back();
                              })
                              ),

                              Expanded(
                                  child: CustomOutlinedButton(
                                      text: "Apply ",
                                      height: getVerticalSize(56),
                                      margin: getMargin(left: 10),
                                      buttonStyle:
                                      CustomButtonStyles.fillPrimary,
                                      buttonTextStyle: CustomTextStyles
                                          .titleMediumOnPrimaryBold,
                                      onTap: () {
                                        Get.back();
                                      })),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget filter_option(id,title){
    return GetBuilder<FilterController>(
      init: FilterController(),
      builder:(controller) =>  GestureDetector(
        onTap: (){
          controller.setcurrentFilterCategory(id);
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(getHorizontalSize(16)),
              color: appTheme.secondaryColor
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.all(getHorizontalSize(16)),
            child: Row(
              children: [
                CustomImageView(
                  svgPath:controller.currentFilterCategory==id?ImageConstant.imgCheakIconSelected: ImageConstant.imgCheakIconUnSelected,
                ),
              SizedBox(width: getHorizontalSize(8),),
                Text(title,style: CustomTextStyles.txtBodygray.copyWith(
                  color: appTheme.buttonColor
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}






// class FilterScreen extends GetWidget<FilterController> {
//   const FilterScreen({Key? key}) : super(key: key);
//
//   @override Widget build(BuildContext context) {
//     return
//       SafeArea(child: Scaffold(resizeToAvoidBottomInset: false,
//         backgroundColor: appTheme.gray10001,
//         appBar: CustomAppBar(height: getVerticalSize(81),
//             leadingWidth: 42,
//             leading: AppbarImage(height: getVerticalSize(24),
//                 width: getHorizontalSize(26),
//                 svgPath: ImageConstant.imgArrowleft,
//                 margin: getMargin(left: 16, top: 29, bottom: 28),
//                 onTap: () {
//                   onTapArrowleft13();
//                 }),
//             centerTitle: true,
//             title: AppbarTitle(text: "lbl_filter".tr),
//             styleType: Style.bgFillWhiteA700),
//         body: SizedBox(width: double.maxFinite,
//             child: Column(mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   SizedBox(width: double.maxFinite,
//                       child: Container(margin: getMargin(top: 10),
//                           padding: getPadding(
//                               left: 16, top: 12, right: 16, bottom: 12),
//                           decoration: AppDecoration.white,
//                           child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text("lbl_sort_by".tr,
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: theme.textTheme.headlineLarge),
//                                 CustomTextFormField(
//                                   controller: controller.group34090Controller,
//                                   hintText: "lbl_top_rated".tr,
//                                   margin: getMargin(top: 16),
//                                   prefix: Container(margin: getMargin(
//                                       left: 16,
//                                       top: 16,
//                                       right: 8,
//                                       bottom: 16), child: CustomImageView(
//                                       svgPath: ImageConstant
//                                           .imgCheakIconSelected)),
//                                     prefixConstraints: BoxConstraints(
//                                         maxHeight: getVerticalSize(52))
//                                 ),
//
//                                 // CustomTextFormField(focusNode: FocusNode(),
//                                 //     autofocus: true,
//                                 //     controller: controller.group34090Controller,
//                                 //     hintText: "lbl_top_rated".tr,
//                                 //     margin: getMargin(top: 16),
//                                 //     variant: TextFormFieldVariant.FillGray200,
//                                 //     padding: TextFormFieldPadding.PaddingT15,
//                                 //     fontStyle: TextFormFieldFontStyle
//                                 //         .SFProDisplayRegular17Gray800,
//                                 //     prefix: Container(margin: getMargin(
//                                 //         left: 16,
//                                 //         top: 16,
//                                 //         right: 8,
//                                 //         bottom: 16), child: CustomImageView(
//                                 //         svgPath: ImageConstant
//                                 //             .imgCheckmarkGray800)),
//                                 //     prefixConstraints: BoxConstraints(
//                                 //         maxHeight: getVerticalSize(52))),
//
//                                 CustomTextFormField(
//                                   controller: controller.group34091Controller,
//                                   hintText: "lbl_favorite".tr,
//                                   margin: getMargin(top: 16),
//                                     prefix: Container(margin: getMargin(
//                                         left: 16,
//                                         top: 16,
//                                         right: 8,
//                                         bottom: 16), child: CustomImageView(
//                                         svgPath: ImageConstant.imgFile)),
//                                     prefixConstraints: BoxConstraints(
//                                         maxHeight: getVerticalSize(52)),
//                                 ),
//                                 // CustomTextFormField(focusNode: FocusNode(),
//                                 //     autofocus: true,
//                                 //
//                                 //     variant: TextFormFieldVariant.FillGray200,
//                                 //     padding: TextFormFieldPadding.PaddingT15,
//                                 //     fontStyle: TextFormFieldFontStyle
//                                 //         .SFProDisplayRegular17Gray800,
//                                 //    ),
//
//                                 CustomTextFormField(
//                                   controller: controller.group34092Controller,
//                                   hintText: "lbl_discount".tr,
//                                   margin: getMargin(top: 16, bottom: 3),
//                                     textInputAction: TextInputAction.done,
//                                     prefix: Container(margin: getMargin(
//                                         left: 16,
//                                         top: 16,
//                                         right: 8,
//                                         bottom: 16), child: CustomImageView(
//                                         svgPath: ImageConstant.imgFile)),
//                                     prefixConstraints: BoxConstraints(
//                                         maxHeight: getVerticalSize(52))
//                                 ),
//                                 // CustomTextFormField(focusNode: FocusNode(),
//                                 //     autofocus: true,
//                                 //
//                                 //     variant: TextFormFieldVariant.FillGray200,
//                                 //     padding: TextFormFieldPadding.PaddingT15,
//                                 //     fontStyle: TextFormFieldFontStyle
//                                 //         .SFProDisplayRegular17Gray800,
//                                 //    )
//                               ]))),
//                   SizedBox(width: double.maxFinite,
//                       child: Container(margin: getMargin(top: 20),
//                           padding: getPadding(
//                               left: 16, top: 11, right: 16, bottom: 11),
//                           decoration: AppDecoration.white,
//                           child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 Padding(padding: getPadding(top: 8),
//                                     child: Text("lbl_pricing_range".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.left,
//                                         style: theme.textTheme.headlineMedium)),
//                                 Padding(padding: getPadding(top: 24),
//                                     child: Column(
//                                         mainAxisAlignment: MainAxisAlignment
//                                             .start, children: [SizedBox(
//                                         height: getVerticalSize(14),
//                                         width: getHorizontalSize(390),
//                                         child: Stack(
//                                             alignment: Alignment.centerLeft,
//                                             children: [
//                                               Align(alignment: Alignment.center,
//                                                   child: Container(
//                                                       height: getVerticalSize(
//                                                           8),
//                                                       width: getHorizontalSize(
//                                                           383),
//                                                       decoration: BoxDecoration(
//                                                           color: appTheme
//                                                               .gray200,
//                                                           borderRadius: BorderRadius
//                                                               .circular(
//                                                               getHorizontalSize(
//                                                                   4))),
//                                                       child: ClipRRect(
//                                                           borderRadius: BorderRadius
//                                                               .circular(
//                                                               getHorizontalSize(
//                                                                   4)),
//                                                           child: LinearProgressIndicator(
//                                                               value: 0.52,
//                                                               backgroundColor: appTheme
//                                                                   .gray200,
//                                                               valueColor: AlwaysStoppedAnimation<
//                                                                   Color>(
//                                                                   appTheme
//                                                                       .gray800))))),
//                                               Align(alignment: Alignment
//                                                   .centerLeft,
//                                                   child: Container(
//                                                       height: getSize(14),
//                                                       width: getSize(14),
//                                                       decoration: BoxDecoration(
//                                                           color: appTheme
//                                                               .gray800,
//                                                           borderRadius: BorderRadius
//                                                               .circular(
//                                                               getHorizontalSize(
//                                                                   7)),
//                                                           border: Border.all(
//                                                               color: appTheme
//                                                                   .white,
//                                                               width: getHorizontalSize(
//                                                                   4),
//                                                               strokeAlign: strokeAlignOutside)))),
//                                               Align(alignment: Alignment.center,
//                                                   child: Container(
//                                                       margin: getMargin(
//                                                           left: 192,
//                                                           right: 184),
//                                                       decoration: AppDecoration
//                                                           .outlineGray8004c
//                                                           .copyWith(
//                                                           borderRadius: BorderRadiusStyle
//                                                               .circleBorder7),
//                                                       child: Column(
//                                                           mainAxisSize: MainAxisSize
//                                                               .min,
//                                                           mainAxisAlignment: MainAxisAlignment
//                                                               .start,
//                                                           children: [
//                                                             Container(
//                                                                 height: getSize(
//                                                                     14),
//                                                                 width: getSize(
//                                                                     14),
//                                                                 decoration: BoxDecoration(
//                                                                     color: appTheme
//                                                                         .gray800,
//                                                                     borderRadius: BorderRadius
//                                                                         .circular(
//                                                                         getHorizontalSize(
//                                                                             7)),
//                                                                     border: Border
//                                                                         .all(
//                                                                         color: appTheme
//                                                                             .white,
//                                                                         width: getHorizontalSize(
//                                                                             4),
//                                                                         strokeAlign: strokeAlignOutside)))
//                                                           ])))
//                                             ])), Padding(
//                                         padding: getPadding(top: 14),
//                                         child: Row(
//                                             mainAxisAlignment: MainAxisAlignment
//                                                 .center,
//                                             children: [
//                                               Text("lbl_0".tr,
//                                                   overflow: TextOverflow
//                                                       .ellipsis,
//                                                   textAlign: TextAlign.left,
//                                                   style: AppStyle
//                                                       .txtBodyGray600),
//                                               Spacer(flex: 55),
//                                               Text("lbl_500".tr,
//                                                   overflow: TextOverflow
//                                                       .ellipsis,
//                                                   textAlign: TextAlign.left,
//                                                   style: AppStyle.txtBody),
//                                               Spacer(flex: 44),
//                                               Text("lbl_1000".tr,
//                                                   overflow: TextOverflow
//                                                       .ellipsis,
//                                                   textAlign: TextAlign.left,
//                                                   style: AppStyle
//                                                       .txtBodyGray600)
//                                             ]))
//                                     ]))
//                               ]))),
//                   Container(height: getVerticalSize(365),
//                       width: double.maxFinite,
//                       margin: getMargin(top: 20),
//                       child: Stack(alignment: Alignment.topCenter,
//                           children: [
//                             Align(alignment: Alignment.bottomCenter,
//                                 child: Container(width: double.maxFinite,
//                                     margin: getMargin(top: 218),
//                                     padding: getPadding(top: 20, bottom: 20),
//                                     decoration: AppDecoration.white,
//                                     child: Row(
//                                         mainAxisAlignment: MainAxisAlignment
//                                             .center,
//                                         crossAxisAlignment: CrossAxisAlignment
//                                             .start,
//                                         children: [
//                                           Expanded(child: CustomButton(
//                                               height: getVerticalSize(52),
//                                               text: "lbl_reset".tr,
//                                               margin: getMargin(
//                                                   right: 10, bottom: 54),
//                                               variant: ButtonVariant
//                                                   .OutlineGray800,
//                                               fontStyle: ButtonFontStyle
//                                                   .SFProDisplayBold18Gray800)),
//                                           Expanded(child: CustomButton(
//                                               height: getVerticalSize(53),
//                                               text: "lbl_apply".tr,
//                                               margin: getMargin(
//                                                   left: 10, bottom: 54),
//                                               onTap: () {
//                                                 onTapApply();
//                                               }))
//                                         ]))),
//                             Align(alignment: Alignment.topCenter,
//                                 child: Container(padding: getPadding(
//                                     left: 16, top: 20, right: 16, bottom: 20),
//                                     decoration: AppDecoration.white,
//                                     child: Column(
//                                         mainAxisSize: MainAxisSize.min,
//                                         crossAxisAlignment: CrossAxisAlignment
//                                             .start,
//                                         mainAxisAlignment: MainAxisAlignment
//                                             .start,
//                                         children: [
//                                           Text("lbl_tags".tr,
//                                               overflow: TextOverflow.ellipsis,
//                                               textAlign: TextAlign.left,
//                                               style: AppStyle.txtHeadline),
//                                           Padding(padding: getPadding(
//                                               top: 8, bottom: 71),
//                                               child: Obx(() =>
//                                                   Wrap(
//                                                       runSpacing: getVerticalSize(
//                                                           5),
//                                                       spacing: getHorizontalSize(
//                                                           5),
//                                                       children: List<
//                                                           Widget>.generate(
//                                                           controller
//                                                               .filterModelObj
//                                                               .value
//                                                               .chipviewtagItemList
//                                                               .value.length, (
//                                                           index) {
//                                                         ChipviewtagItemModel model = controller
//                                                             .filterModelObj
//                                                             .value
//                                                             .chipviewtagItemList
//                                                             .value[index];
//                                                         return ChipviewtagItemWidget(
//                                                             model);
//                                                       }))))
//                                         ])))
//                           ]))
//                 ]))));
//   }
//
//   /// Navigates to the topPicksForYouScreen when the action is triggered.
//
//   /// When the action is triggered, this function uses the `Get` package to
//   /// push the named route for the topPicksForYouScreen.
//   onTapApply() {
//     Get.toNamed(AppRoutes.topPicksForYouScreen,);
//   }
//
//
//   /// Navigates to the previous screen.
//   ///
//   /// When the action is triggered, this function uses the [Get] library to
//   /// navigate to the previous screen in the navigation stack.
//   onTapArrowleft13() {
//     Get.back();
//   }
// }
