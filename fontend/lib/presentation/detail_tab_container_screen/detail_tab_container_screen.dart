import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/custom_text_form_field.dart';

import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../top_picks_for_you_screen/controller/top_picks_for_you_controller.dart';
import '../top_picks_for_you_screen/models/productdetails_item_model.dart';
import '../top_picks_for_you_screen/widgets/productdetails_item_widget.dart';
import '../zoom_image_screen/zoom_image_screen.dart';
import 'controller/detail_tab_container_controller.dart';


class DetailTabContainerScreen extends StatefulWidget {
  const DetailTabContainerScreen({super.key});

  @override
  State<DetailTabContainerScreen> createState() => _DetailTabContainerScreenState();
}

class _DetailTabContainerScreenState extends State<DetailTabContainerScreen> {
  DetailTabContainerController detailTabContainerController = Get.put(DetailTabContainerController());
  // CustomBottomBarController customBottomBarController = Get.put(CustomBottomBarController());
  bool blockScroll = false;
  PageController pageController = PageController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emeilController = TextEditingController();
  TextEditingController reviewController = TextEditingController();
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
                body: GetBuilder<CustomBottomBarController>(
                  init:CustomBottomBarController(),
                  builder: (customBottomBarController) => GetBuilder<DetailTabContainerController>(
                    init: DetailTabContainerController(),
                    builder: (controller) =>
                        Stack(
                          children: [
                            SizedBox(
                                width: double.maxFinite,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child:
                                        CustomScrollView(
                                          shrinkWrap: true,
                                          primary: true,
                                          physics: blockScroll
                                              ? NeverScrollableScrollPhysics()
                                              : BouncingScrollPhysics(),
                                          slivers: [
                                            SliverAppBar(
                                              toolbarHeight: getSize(58),
                                              backgroundColor: Colors.transparent,
                                              expandedHeight: getSize(376),
                                              leadingWidth: getSize(44),
                                              leading: AppbarImage(
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  margin: getMargin(
                                                      left: 16),
                                                  onTap: () {
                                                    Get.back();
                                                    // onTapArrowleft4();
                                                  }),
                                              // .marginOnly(
                                              // top: 21.h, bottom: 13.h, left: 20.h),
                                              actions: [

                                                AppbarImage(
                                                    height:
                                                    getSize(
                                                        24),
                                                    width:
                                                    getSize(
                                                        24),
                                                    svgPath: ImageConstant.imgSearchBlack900,
                                                    margin: getMargin(
                                                        left: 16)),
                                                AppbarImage(
                                                  onTap: (){
                                                    customBottomBarController. getIndex(2);
                                                    Get.toNamed(AppRoutes.homeContainerScreen);
                                                  },
                                                    height:getSize(
                                                        24),
                                                    width:
                                                    getSize(
                                                        24),
                                                    svgPath:
                                                    ImageConstant.imgLockBlack900,
                                                    margin: getMargin(
                                                        left: 24,
                                                        right: 16))
                                              ],
                                              flexibleSpace: FlexibleSpaceBar(
                                                background: Stack(
                                                  children: [
                                                    PageView.builder(
                                                      onPageChanged: (value) {
                                                        controller.setCurrentPage(value);
                                                      },
                                                      controller: pageController,
                                                      itemCount: 3,
                                                      itemBuilder: (context, index) {
                                                        return GestureDetector(
                                                          onTap: (){
                                                            Get.to(ZoomImageScreen());
                                                          },
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                    image: AssetImage(
                                                                     ImageConstant.imgBg),
                                                                    fit: BoxFit.fill

                                                                )),
                                                          ),
                                                        );
                                                      },),
                                                    Align  (
                                                      alignment: Alignment.bottomLeft,
                                                      child: Padding(
                                                        padding:getPadding(bottom
                                                            :16,left:16),
                                                        child: Container(
                                                            decoration:BoxDecoration(color:appTheme.white,borderRadius: BorderRadius.circular(getHorizontalSize(24))),
                                                            child:Padding(
                                                              padding: getPadding(top:6,bottom:6,left:20,right:20),

                                                              child: Row(
                                                                  mainAxisSize: MainAxisSize.min,
                                                                  children :[
                                                                    Text("${controller.currentPage + 1}",style: CustomTextStyles.txtSFProTextRegular16,),
                                                                    Text("/3",style: CustomTextStyles.txtSFProTextRegular16,),
                                                                  ]
                                                              ),
                                                            )
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            SliverList(
                                              delegate:
                                              SliverChildListDelegate([
                                                ListView(
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  physics:
                                                  const NeverScrollableScrollPhysics(),
                                                  children: [
                                                    Column(
                                                        mainAxisAlignment: MainAxisAlignment
                                                            .start,
                                                        children: [
                                                          Container(
                                                              width: double.maxFinite,
                                                              margin: getMargin(
                                                                  top: 20),
                                                              padding: getPadding(
                                                                  left: 16,
                                                                  top: 20,
                                                                  right: 16,
                                                                  bottom: 20),
                                                              decoration: AppDecoration
                                                                  .white,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding:
                                                                        getPadding(
                                                                            top: 4,
                                                                            bottom: 1),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                            children: [
                                                                              Text(
                                                                                  "msg_royal_chocolate2"
                                                                                      .tr,
                                                                                  overflow:
                                                                                  TextOverflow
                                                                                      .ellipsis,
                                                                                  textAlign: TextAlign
                                                                                      .left,
                                                                                  style:
                                                                                  CustomTextStyles
                                                                                      .txtHeadline),
                                                                              Padding(
                                                                                  padding:
                                                                                  getPadding(
                                                                                      top: 11),
                                                                                  child: Row(
                                                                                      children: [
                                                                                        Text(
                                                                                            "lbl_23_00"
                                                                                                .tr,
                                                                                            overflow: TextOverflow
                                                                                                .ellipsis,
                                                                                            textAlign:
                                                                                            TextAlign
                                                                                                .left,
                                                                                            style:CustomTextStyles
                                                                                                .txtHeadline),
                                                                                        Container(
                                                                                            height:
                                                                                            getVerticalSize(
                                                                                                17),
                                                                                            margin: getMargin(
                                                                                                left: 8,
                                                                                                top: 1,
                                                                                                bottom: 3),
                                                                                            child: Stack(
                                                                                                alignment: Alignment
                                                                                                    .bottomCenter,
                                                                                                children: [
                                                                                                  Align(
                                                                                                      alignment:
                                                                                                      Alignment
                                                                                                          .center,
                                                                                                      child: Text(
                                                                                                          "lbl_25_00"
                                                                                                              .tr,
                                                                                                          overflow:
                                                                                                          TextOverflow
                                                                                                              .ellipsis,
                                                                                                          textAlign:
                                                                                                          TextAlign
                                                                                                              .left,
                                                                                                          style: CustomTextStyles
                                                                                                              .txtSFProDisplayRegular14)),
                                                                                                  Align(
                                                                                                      alignment:
                                                                                                      Alignment
                                                                                                          .bottomCenter,
                                                                                                      child: Container(
                                                                                                          height:
                                                                                                          getVerticalSize(
                                                                                                              1),
                                                                                                          width: getHorizontalSize(
                                                                                                              45),
                                                                                                          margin: getMargin(
                                                                                                              bottom:
                                                                                                              6),
                                                                                                          decoration:
                                                                                                          BoxDecoration(
                                                                                                              color: appTheme
                                                                                                                  .gray600)))
                                                                                                ])),
                                                                                        Padding(
                                                                                            padding: getPadding(
                                                                                                left: 8,
                                                                                                top: 1,
                                                                                                bottom: 3),
                                                                                            child: Text(
                                                                                                "lbl_12_off"
                                                                                                    .tr,
                                                                                                overflow:
                                                                                                TextOverflow
                                                                                                    .ellipsis,
                                                                                                textAlign:
                                                                                                TextAlign
                                                                                                    .left,
                                                                                                style: CustomTextStyles
                                                                                                    .txtSFProDisplayRegular14Green700))
                                                                                      ])),
                                                                              Padding(
                                                                                  padding:
                                                                                  getPadding(
                                                                                      top: 12),
                                                                                  child: Row(
                                                                                      children: [
                                                                                        CustomImageView(
                                                                                            svgPath: ImageConstant
                                                                                                .imgIcstar,
                                                                                            height: getSize(
                                                                                                14),
                                                                                            width: getSize(
                                                                                                14),
                                                                                            margin: getMargin(
                                                                                                bottom: 1)),
                                                                                        CustomImageView(
                                                                                            svgPath: ImageConstant
                                                                                                .imgIcstar,
                                                                                            height: getSize(
                                                                                                14),
                                                                                            width: getSize(
                                                                                                14),
                                                                                            margin: getMargin(
                                                                                                left: 2,
                                                                                                bottom: 1)),
                                                                                        CustomImageView(
                                                                                            svgPath: ImageConstant
                                                                                                .imgIcstar,
                                                                                            height: getSize(
                                                                                                14),
                                                                                            width: getSize(
                                                                                                14),
                                                                                            margin: getMargin(
                                                                                                left: 2,
                                                                                                bottom: 1)),
                                                                                        CustomImageView(
                                                                                            svgPath: ImageConstant
                                                                                                .imgIcstar,
                                                                                            height: getSize(
                                                                                                14),
                                                                                            width: getSize(
                                                                                                14),
                                                                                            margin: getMargin(
                                                                                                left: 2,
                                                                                                bottom: 1)),
                                                                                        CustomImageView(
                                                                                            svgPath: ImageConstant
                                                                                                .imgIcstarGray300,
                                                                                            height: getSize(
                                                                                                14),
                                                                                            width: getSize(
                                                                                                14),
                                                                                            margin: getMargin(
                                                                                                left: 2,
                                                                                                bottom: 1)),
                                                                                        Padding(
                                                                                            padding: getPadding(
                                                                                                left: 6),
                                                                                            child: Text(
                                                                                                "lbl_8_reviews"
                                                                                                    .tr,
                                                                                                overflow:
                                                                                                TextOverflow
                                                                                                    .ellipsis,
                                                                                                textAlign:
                                                                                                TextAlign
                                                                                                    .left,
                                                                                                style: CustomTextStyles
                                                                                                    .txtFootnoteGray700))
                                                                                      ])),
                                                                              Padding(
                                                                                  padding:
                                                                                  getPadding(
                                                                                      top: 12),
                                                                                  child: Text(
                                                                                      "lbl_sku_85_we02"
                                                                                          .tr,
                                                                                      overflow: TextOverflow
                                                                                          .ellipsis,
                                                                                      textAlign:
                                                                                      TextAlign
                                                                                          .left,
                                                                                      style: CustomTextStyles
                                                                                          .txtFootnote))
                                                                            ])),
                                                                    CustomImageView(
                                                                        svgPath: ImageConstant
                                                                            .imgFavorite,
                                                                        height: getSize(
                                                                            20),
                                                                        width: getSize(
                                                                            20),
                                                                        margin:
                                                                        getMargin(
                                                                            right: 15,
                                                                            bottom: 98))
                                                                  ])),
                                                          SizedBox(
                                                              width: double.maxFinite,
                                                              child: Container(
                                                                  width: getHorizontalSize(
                                                                      427),
                                                                  margin: getMargin(
                                                                      top: 20,
                                                                      right: 1),
                                                                  padding: getPadding(
                                                                      left: 16,
                                                                      top: 13,
                                                                      right: 16,
                                                                      bottom: 13),
                                                                  decoration: AppDecoration
                                                                      .white,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                      children: [
                                                                        Row(children: [
                                                                          GestureDetector(
                                                                            onTap:(){
                                                                              controller.setCurrentTab(1);
                                                                            },
                                                                            child: Container(
                                                                              decoration:BoxDecoration(
                                                                                  border: Border(bottom:BorderSide(color: controller.currentTabId==1?appTheme.black900:appTheme.white) )
                                                                              ),
                                                                              child: Text(
                                                                                  "lbl_description"
                                                                                      .tr,
                                                                                  overflow: TextOverflow
                                                                                      .ellipsis,
                                                                                  textAlign: TextAlign
                                                                                      .left,
                                                                                  style: controller.currentTabId==1?
                                                                                  CustomTextStyles
                                                                                      .txtCallout
                                                                                      .copyWith(
                                                                                      letterSpacing:
                                                                                      getHorizontalSize(
                                                                                          0.16)):CustomTextStyles
                                                                                      .txtSFProDisplayRegular16
                                                                                      .copyWith(
                                                                                      letterSpacing:
                                                                                      getHorizontalSize(
                                                                                          0.16))),
                                                                            ),
                                                                          ),
                                                                          GestureDetector(
                                                                              onTap: () {
                                                                                controller.setCurrentTab(2);
                                                                                // onTapTxtReviews();
                                                                              },
                                                                              child: Padding(
                                                                                  padding:
                                                                                  getPadding(
                                                                                      left: 24),
                                                                                  child: Container(
                                                                                    decoration:BoxDecoration(
                                                                                      border: Border(bottom:BorderSide(color: controller.currentTabId==1?appTheme.white:appTheme.black900) )
                                                                                    ),
                                                                                    child: Text(
                                                                                       "Reviews",
                                                                                        overflow: TextOverflow
                                                                                            .ellipsis,
                                                                                        textAlign:
                                                                                        TextAlign
                                                                                            .left,
                                                                                        style:  controller.currentTabId==2?
                                                                                        CustomTextStyles
                                                                                            .txtCallout
                                                                                            .copyWith(
                                                                                            letterSpacing:
                                                                                            getHorizontalSize(
                                                                                                0.16)):CustomTextStyles
                                                                                            .txtSFProDisplayRegular16
                                                                                            .copyWith(
                                                                                            letterSpacing:
                                                                                            getHorizontalSize(
                                                                                                0.16))),
                                                                                  )))
                                                                        ]),

                                                                        controller.currentTabId==1?Align(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            child: Container(
                                                                                width: getHorizontalSize(
                                                                                    368),
                                                                                margin: getMargin(
                                                                                    left: 10,
                                                                                    top: 30,
                                                                                    right: 16,
                                                                                    bottom: 9),
                                                                                child: Text(
                                                                                    "msg_moist_rich_and"
                                                                                        .tr,
                                                                                    maxLines: null,
                                                                                    textAlign: TextAlign
                                                                                        .left,
                                                                                    style: CustomTextStyles
                                                                                        .txtBody))):
                                                                        productDetailWithReviewTab()
                                                                      ]))),
                                                          Container(
                                                              margin: getMargin(
                                                                  top: 20, right: 1),
                                                              padding: getPadding(
                                                                  left: 16,
                                                                  top: 20,
                                                                  right: 16,
                                                                  bottom: 20),
                                                              decoration: AppDecoration
                                                                  .white,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                                  children: [
                                                                    Expanded(
                                                                      child: Container(
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                            children: [
                                                                              Text(
                                                                                  "lbl_toppings"
                                                                                      .tr,
                                                                                  overflow: TextOverflow
                                                                                      .ellipsis,
                                                                                  textAlign: TextAlign
                                                                                      .left,
                                                                                  style: CustomTextStyles
                                                                                      .txtHeadline),
                                                                              SizedBox(height: getVerticalSize(7),),
                                                                              toppings_button((){
                                                                                controller.setCurrentToppings(1);
                                                                              }, "lbl_strawberries".tr, 1),
                                                                              toppings_button((){
                                                                                controller.setCurrentToppings(2);
                                                                              }, "lbl_oreo_cookies".tr, 2),

                                                                            ]),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child: Container(
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                            children: [
                                                                              Text(
                                                                                  "lbl_frosting"
                                                                                      .tr,
                                                                                  overflow:
                                                                                  TextOverflow
                                                                                      .ellipsis,
                                                                                  textAlign: TextAlign
                                                                                      .left,
                                                                                  style:
                                                                                  CustomTextStyles
                                                                                      .txtHeadline),
                                                                              frosting_button((){
                                                                                controller.setCurrentFrosting(1);
                                                                              }, "lbl_vanilla".tr, 1),
                                                                              frosting_button((){
                                                                                controller.setCurrentFrosting(2);
                                                                              }, "lbl_chocolate".tr, 2),

                                                                            ]),
                                                                      ),
                                                                    )
                                                                  ])),
                                                          SizedBox(
                                                              width: double.maxFinite,
                                                              child: Container(
                                                                  margin: getMargin(
                                                                      top: 20),
                                                                  padding: getPadding(
                                                                      all: 16),
                                                                  decoration: AppDecoration
                                                                      .white,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                      children: [
                                                                        Text(
                                                                            "lbl_size"
                                                                                .tr,
                                                                            overflow: TextOverflow
                                                                                .ellipsis,
                                                                            textAlign: TextAlign
                                                                                .left,
                                                                            style: CustomTextStyles
                                                                                .txtHeadline),
                                                                        CustomDropDown(
                                                                            focusNode: FocusNode(),
                                                                            autofocus: true,
                                                                            icon: Container(
                                                                                margin: getMargin(
                                                                                    left: 30,
                                                                                    right: 16),
                                                                                child: CustomImageView(
                                                                                    svgPath: ImageConstant
                                                                                        .imgArrowdown)),
                                                                            hintText: "lbl_medium"
                                                                                .tr,
                                                                            margin: getMargin(
                                                                                top: 8),
                                                                            items: controller
                                                                                .productDetailModelObj
                                                                                .value
                                                                                .dropdownItemList
                                                                                .value,
                                                                            onChanged: (
                                                                                value) {
                                                                              controller
                                                                                  .onSelected(
                                                                                  value);
                                                                            })
                                                                      ]))),
                                                          SizedBox(
                                                              width: double.maxFinite,
                                                              child: Container(
                                                                  margin: getMargin(
                                                                      top: 20,bottom:114),
                                                                  padding: getPadding(
                                                                      left: 16,
                                                                      top: 20,
                                                                      right: 16,
                                                                      bottom: 20),
                                                                  decoration: AppDecoration
                                                                      .white,
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                      children: [
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                right: 8),
                                                                            child: Row(
                                                                                mainAxisAlignment:
                                                                                MainAxisAlignment
                                                                                    .spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                      "lbl_related_product"
                                                                                          .tr,
                                                                                      overflow: TextOverflow
                                                                                          .ellipsis,
                                                                                      textAlign:
                                                                                      TextAlign
                                                                                          .left,
                                                                                      style: CustomTextStyles.titleLarge20,),
                                                                                  GestureDetector(
                                                                                      onTap: () {
                                                                                        // onTapTxtViewall();
                                                                                      },
                                                                                      child: Padding(
                                                                                          padding: getPadding(
                                                                                              top: 2,
                                                                                              bottom: 2),
                                                                                          child: Text(
                                                                                              "lbl_view_all"
                                                                                                  .tr,
                                                                                              overflow:
                                                                                              TextOverflow
                                                                                                  .ellipsis,
                                                                                              textAlign:
                                                                                              TextAlign
                                                                                                  .left,
                                                                                              style: CustomTextStyles
                                                                                                  .txtBody)))
                                                                                ])),
                                                                        GetBuilder<TopPicksForYouController>(
                                                                          init: TopPicksForYouController(),
                                                                          builder: (topPicksForYouController) => GridView.builder(
                                                                            padding: getPadding(
                                                                                top: 10, bottom: 20, left: 0, right: 0),
                                                                            itemCount: topPicksForYouController.topPicksList.length < 2
                                                                                ? topPicksForYouController.topPicksList.length
                                                                                : 2,
                                                                            primary: false,
                                                                            shrinkWrap: true,
                                                                            gridDelegate:
                                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                                                mainAxisExtent: getVerticalSize(288),
                                                                                crossAxisCount: topPicksForYouController.topPicksList.length<2?topPicksForYouController.topPicksList.length:2,
                                                                                mainAxisSpacing: getHorizontalSize(0),
                                                                                crossAxisSpacing: getHorizontalSize(20)),
                                                                            itemBuilder: (context, index) {
                                                                              ProductdetailsItemModel data = topPicksForYouController.topPicksList[index];
                                                                              return product_formate(
                                                                                  data,
                                                                                      () {},
                                                                                  CustomImageView(
                                                                                      onTap: () {
                                                                                        topPicksForYouController.setFavProduct(data);
                                                                                      },
                                                                                      svgPath: data.isFavourite!
                                                                                          ? ImageConstant.imgFavouriteIconSelected
                                                                                          : ImageConstant.imgFavorite,
                                                                                      height: getSize(20),
                                                                                      width: getSize(20),
                                                                                      alignment: Alignment.centerRight));


                                                                            },
                                                                          ),
                                                                        )

                                                                      ])))
                                                        ])
                                                  ],
                                                ),
                                              ]),
                                            ),

                                          ],
                                        ),


                                      )
                                    ])),
                            Align(
                              alignment:Alignment.bottomCenter,
                              child: Container(
                                width:double.infinity,
                                color:appTheme.white,
                                child: Padding(
                                  padding: getPadding(top:20,bottom:20,left:23,right:23),
                                  child: Row(

                                      children: [

                                        Expanded(
                                          child: CustomOutlinedButton(
                                            onTap: (){

                                              customBottomBarController. getIndex(2);
                                              Get.toNamed(AppRoutes.homeContainerScreen);


                                            },
                                            height: getVerticalSize(56),
                                            text: "lbl_add_to_cart".tr,
                                            margin: getMargin(
                                              right: 10,
                                            ),
                                            buttonStyle:
                                            CustomButtonStyles.fillwhite,

                                            buttonTextStyle: CustomTextStyles
                                                .titleMediumPrimaryBold,
                                          ),
                                        ),


                                        Expanded(
                                          child: CustomElevatedButton(
                                            onTap: (){
                                              Get.toNamed(AppRoutes.paymentScreen);

                                            },
                                            height: getVerticalSize(56),
                                            text: "lbl_buy_now".tr,
                                            margin: getMargin(
                                              left: 10,
                                            ),
                                            buttonStyle:
                                            CustomButtonStyles.fillPrimary,
                                            buttonTextStyle: CustomTextStyles
                                                .titleMediumOnPrimaryBold,
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            )
                          ],
                        ),
                  ),
                ))));










  }


  onTapArrowleftone() {
    Get.back();
  }


  // ignore: non_constant_identifier_names
  Widget toppings_button(function,text,id){
    return  Padding(
      padding:getPadding(bottom: 7,top: 7),
      child: GestureDetector(
        onTap:function,
        child: Row(
            children:[
              CustomImageView(
                height: getSize(20),
                width: getSize(20),
                svgPath: id==detailTabContainerController.currentTopping?ImageConstant.imgCheakIconSelected:
                ImageConstant.imgCheakIconUnSelected,
              ),
              SizedBox(width: getHorizontalSize(8),),
              Text(text,style:CustomTextStyles.txtSFProDisplay17width400)
            ]
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget frosting_button(function,text,id){
    return  Padding(
      padding:getPadding(bottom: 7,top: 7),
      child: GestureDetector(
        onTap:function,
        child: Row(
            children:[
              CustomImageView(
                height: getSize(20),
                width: getSize(20),
                svgPath: id==detailTabContainerController.currentFrosting?ImageConstant.imgCheakIconSelected:
                ImageConstant.imgCheakIconUnSelected,
              ),
              SizedBox(width: getHorizontalSize(8),),
              Text(text,style:CustomTextStyles.txtSFProDisplay17width400)
            ]
        ),
      ),
    );
  }


  Widget productDetailWithReviewTab(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: getVerticalSize(20),),
Row(
  children: [
    Row(
      children: [
        CustomImageView(
          height: getSize(48),
width: getSize(48),
svgPath: ImageConstant.imgAvtar,
        ),
        SizedBox(width: getHorizontalSize(16),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            rating_star_row(),
            Text("msg_very_nice_product".tr,style: theme.textTheme.bodyMedium!,)
          ],
        )
      ],
    )
  ],
),
        Padding(
            padding: getPadding(top: 17.5),
            child: Divider(
                height: getVerticalSize(1),
                thickness: getVerticalSize(1),
                color:
                appTheme.black20)),
        SizedBox(height: getVerticalSize(16),),
        Text("Add a review",style: CustomTextStyles.bodyMedium13,),
        SizedBox(height: getVerticalSize(8),),
        Text("your email address will not be published.required field are marked",style: CustomTextStyles.txSubtitle16width400gray700,),
        SizedBox(height: getVerticalSize(16),),
      Row(
        children: [
          Text("Your rating*",style: CustomTextStyles.txtSFProDisplayRegular12Black900Width400,),
          SizedBox(width: getHorizontalSize(8),),
          rating_star_row_gray()
        ],
      ),
        SizedBox(height: getVerticalSize(22),),
        CustomTextFormField(
          hintText: "Your name",
          controller: nameController,
        ),
        SizedBox(height: getVerticalSize(16),),
        CustomTextFormField(
          hintText: "email",
          controller: emeilController,
        ),
        SizedBox(height: getVerticalSize(16),),
        CustomTextFormField(
          hintText: "Write Here",
          controller: reviewController,
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget rating_star_row(){
    return Row(
        children: [
          CustomImageView(
              svgPath: ImageConstant
                  .imgIcstar,
              height: getSize(
                  14),
              width: getSize(
                  14),
              margin: getMargin(
                  bottom: 1)),
          CustomImageView(
              svgPath: ImageConstant
                  .imgIcstar,
              height: getSize(
                  14),
              width: getSize(
                  14),
              margin: getMargin(
                  left: 2,
                  bottom: 1)),
          CustomImageView(
              svgPath: ImageConstant
                  .imgIcstar,
              height: getSize(
                  14),
              width: getSize(
                  14),
              margin: getMargin(
                  left: 2,
                  bottom: 1)),
          CustomImageView(
              svgPath: ImageConstant
                  .imgIcstar,
              height: getSize(
                  14),
              width: getSize(
                  14),
              margin: getMargin(
                  left: 2,
                  bottom: 1)),
          CustomImageView(
              svgPath: ImageConstant
                  .imgIcstarGray300,
              height: getSize(
                  14),
              width: getSize(
                  14),
              margin: getMargin(
                  left: 2,
                  bottom: 1)),
        ]);
  }


  // ignore: non_constant_identifier_names
  Widget rating_star_row_gray(){
    return Row(
        children: [
          CustomImageView(
              svgPath: ImageConstant
                  .imgIcstarGray300,
              height: getSize(
                  14),
              width: getSize(
                  14),
              margin: getMargin(
                  bottom: 1)),
          CustomImageView(
              svgPath: ImageConstant
                  .imgIcstarGray300,
              height: getSize(
                  14),
              width: getSize(
                  14),
              margin: getMargin(
                  left: 2,
                  bottom: 1)),
          CustomImageView(
              svgPath: ImageConstant
                  .imgIcstarGray300,
              height: getSize(
                  14),
              width: getSize(
                  14),
              margin: getMargin(
                  left: 2,
                  bottom: 1)),
          CustomImageView(
              svgPath: ImageConstant
                  .imgIcstarGray300,
              height: getSize(
                  14),
              width: getSize(
                  14),
              margin: getMargin(
                  left: 2,
                  bottom: 1)),
          CustomImageView(
              svgPath: ImageConstant
                  .imgIcstarGray300,
              height: getSize(
                  14),
              width: getSize(
                  14),
              margin: getMargin(
                  left: 2,
                  bottom: 1)),
        ]);
  }
}





