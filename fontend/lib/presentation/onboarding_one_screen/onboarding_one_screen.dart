import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';

import 'controller/onboarding_one_controller.dart';
import 'models/onboarding_one_model.dart';
import 'models/sliderfreshlyba_item_model.dart';





class OnboardingOneScreen extends StatefulWidget {
  const OnboardingOneScreen({super.key});

  @override
  State<OnboardingOneScreen> createState() => _OnboardingOneScreenState();
}

class _OnboardingOneScreenState extends State<OnboardingOneScreen> {
 OnboardingOneController controller = Get.put(OnboardingOneController());
 List<SliderfreshlybaItemModel> onboarding =
 OnboardingOneModel.sliderfreshlybaItemList();
 PageController pageController = PageController();
 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return WillPopScope(
      onWillPop: () async {
        closeApp();
        return false;
      },
      child: ColorfulSafeArea(
          color: appTheme.white,
          child: Scaffold(
            backgroundColor: appTheme.white,
            body: GetBuilder<OnboardingOneController>(
                init: OnboardingOneController(),
                builder: (controller) => Stack(
                  children: [
                    Container(
                      child: PageView.builder(
                        onPageChanged: (value) {
                          controller.setCurrentPage(value);
                        },
                        controller: pageController,
                        itemCount: onboarding.length,
                        itemBuilder: (context, index) {
                          SliderfreshlybaItemModel data =
                          onboarding[index];
                          return Container(
                              child: Padding(
                                padding:
                                getPadding(top: 64, left: 16, right: 16),
                                child: Column(
                                  children: [
                                    CustomImageView(
                                      height: getSize(390),
                                      width: double.infinity,
                                      imagePath: data.image!,
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(
                                      height: getVerticalSize(40),
                                    ),
                                    Padding(
                                      padding: getPadding(left: 28,right: 28),
                                      child: Text(
                                        data.title!,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.headlineMedium,
                                      ),
                                    ),
                                    SizedBox(
                                      height: getVerticalSize(24),
                                    ),
                                    Container(
                                      width: getSize(307),
                                      child: Text(
                                        data.subtitle!,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                        },
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                          bottom: 74, top: 26, left: 16, right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                              onTap: () {
                                PrefUtils.setIsIntro(false);
                                onTapTxtSkip();
                              },
                              child:

                              Text(
                                  controller.currentPage ==
                                      onboarding.length - 1
                                      ? ""
                                      : "lbl_skip".tr,
                                overflow: TextOverflow.ellipsis,
                                                 textAlign: TextAlign.left,
                                                 style: theme.textTheme.bodyLarge)
                          ),
                          Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: List.generate(
                                      onboarding.length, (index) {
                                    return AnimatedContainer(
                                      margin:
                                      getMargin(left: 3, right: 3),
                                      duration:  Duration(
                                          milliseconds: 300),
                                      height: getSize(7),
                                      width: getSize(index ==
                                          controller.currentPage?16:7),
                                      decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(getHorizontalSize(22)),
                                          color: (index ==
                                              controller.currentPage)
                                              ? theme.colorScheme.primary
                                              : theme.colorScheme.primary.withOpacity(0.14)),
                                    );
                                  })),

                              CustomElevatedButton(
                                  height: getVerticalSize(56),
                                  text:controller.currentPage ==
                                      onboarding.length - 1
                                      ? "Get started"
                                      : "lbl_next".tr,
                                  margin: getMargin(left: 8, top: 41, bottom: 5),
                                  buttonStyle: CustomButtonStyles.fillPrimary,
                                  buttonTextStyle:
                                  CustomTextStyles.titleMediumOnPrimaryBold,
                                  onTap: controller.currentPage ==
                                      onboarding.length - 1
                                      ? () {
                                    PrefUtils.setIsIntro(false);
                                    Get.toNamed(
                                      AppRoutes.loginWithActiveScreen,
                                    );
                                  }
                                      : () {
                                    pageController.nextPage(
                                        duration: const Duration(
                                            milliseconds: 100),
                                        curve: Curves.bounceIn);
                                  }



                                  )
                              // CustomButton(
                              //     height: getVerticalSize(54),
                              //     text: controller.currentPage ==
                              //         onboarding.length - 1
                              //         ? "Get started"
                              //         : "lbl_next".tr,
                              //     margin: getMargin(top: 88),
                              //     onTap: controller.currentPage ==
                              //         onboarding.length - 1
                              //         ? () {
                              //       // PrefUtils.setIsIntro(false);
                              //       Get.toNamed(
                              //         AppRoutes.logInScreen,
                              //       );
                              //     }
                              //         : () {
                              //       pageController.nextPage(
                              //           duration: const Duration(
                              //               milliseconds: 100),
                              //           curve: Curves.bounceIn);
                              //     }),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )),

            // Container(
            // width: double.maxFinite,
            // padding: getPadding(left: 15, top: 29, right: 15, bottom: 29),
            // child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //      Align(
            //          alignment: Alignment.centerRight,
            //          child: GestureDetector(
            //              onTap: () {
            //               onTapTxtSkip();
            //              },
            //              child: Text("lbl_skip".tr,
            //                  overflow: TextOverflow.ellipsis,
            //                  textAlign: TextAlign.left,
            //                  style: AppStyle.txtBody))),
            //      Container(
            //          height: getVerticalSize(359),
            //          width: getHorizontalSize(397),
            //          margin: getMargin(top: 28),
            //          child: Stack(alignment: Alignment.center, children: [
            //           CustomImageView(
            //               svgPath: ImageConstant.imgMaskgroup,
            //               height: getVerticalSize(359),
            //               width: getHorizontalSize(396),
            //               alignment: Alignment.center),
            //           CustomImageView(
            //               imagePath: ImageConstant.imgRectangle1,
            //               height: getVerticalSize(359),
            //               width: getHorizontalSize(396),
            //               alignment: Alignment.center)
            //          ])),
            //      Padding(
            //          padding: getPadding(left: 20, top: 33, right: 24),
            //          child: Obx(() => CarouselSlider.builder(
            //              options: CarouselOptions(
            //                  height: getVerticalSize(154),
            //                  initialPage: 0,
            //                  autoPlay: true,
            //                  viewportFraction: 1.0,
            //                  enableInfiniteScroll: false,
            //                  scrollDirection: Axis.horizontal,
            //                  onPageChanged: (index, reason) {
            //                   controller.sliderIndex.value = index;
            //                  }),
            //              itemCount: controller.onboardingOneModelObj.value
            //                  .sliderfreshlybaItemList.value.length,
            //              itemBuilder: (context, index, realIndex) {
            //               SliderfreshlybaItemModel model = controller
            //                   .onboardingOneModelObj
            //                   .value
            //                   .sliderfreshlybaItemList
            //                   .value[index];
            //               return SliderfreshlybaItemWidget(model);
            //              }))),
            //      Obx(() => Container(
            //          height: getVerticalSize(8),
            //          margin: getMargin(top: 29, bottom: 5),
            //          child: AnimatedSmoothIndicator(
            //              activeIndex: controller.sliderIndex.value,
            //              count: controller.onboardingOneModelObj.value
            //                  .sliderfreshlybaItemList.value.length,
            //              axisDirection: Axis.horizontal,
            //              effect: ScrollingDotsEffect(
            //                  spacing: 8,
            //                  activeDotColor: ColorConstant.black900A2,
            //                  dotColor: ColorConstant.gray300A2,
            //                  dotHeight: getVerticalSize(8),
            //                  dotWidth: getHorizontalSize(8)))))
            //     ])),

            // bottomNavigationBar: CustomButton(
            //     height: getVerticalSize(54),
            //     text: "lbl_next".tr,
            //     margin: getMargin(left: 16, right: 16, bottom: 73),
            //     onTap: () {
            //      onTapNext();
            //     })
          )));








    // ColorfulSafeArea(
    //   color: appTheme.white,
    //   child:Scaffold(
    //       backgroundColor: appTheme.gray50,
    //       body: Container(
    //           width: double.maxFinite,
    //           padding: getPadding(left: 12, top: 19, right: 12, bottom: 19),
    //           child: Column(
    //               mainAxisAlignment: MainAxisAlignment.start,
    //               children: [
    //                Align(
    //                    alignment: Alignment.centerRight,
    //                    child: GestureDetector(
    //                        onTap: () {
    //                         onTapTxtSkip();
    //                        },
    //                        child: Padding(
    //                            padding: getPadding(right: 4),
    //                            child: Text("lbl_skip".tr,
    //                                style: theme.textTheme.bodyLarge)))),
    //                Container(
    //                    margin: getMargin(left: 4, top: 24, right: 4),
    //                    decoration: BoxDecoration(
    //                        image: DecorationImage(
    //                            image: fs.Svg(ImageConstant.imgCoffee),
    //                            fit: BoxFit.cover)),
    //                    child: CustomImageView(
    //                        imagePath: ImageConstant.imgRectangle1,
    //                        height: getVerticalSize(390),
    //                        width: getHorizontalSize(382))),
    //                Padding(
    //                    padding: getPadding(left: 17, top: 44, right: 20),
    //                    child: Obx(() => CarouselSlider.builder(
    //                        options: CarouselOptions(
    //                            height: getVerticalSize(152),
    //                            initialPage: 0,
    //                            autoPlay: true,
    //                            viewportFraction: 1.0,
    //                            enableInfiniteScroll: false,
    //                            scrollDirection: Axis.horizontal,
    //                            onPageChanged: (index, reason) {
    //                             controller.sliderIndex.value = index;
    //                            }),
    //                        itemCount: controller.onboardingOneModelObj.value
    //                            .sliderfreshlybaItemList.value.length,
    //                        itemBuilder: (context, index, realIndex) {
    //                         SliderfreshlybaItemModel model = controller
    //                             .onboardingOneModelObj
    //                             .value
    //                             .sliderfreshlybaItemList
    //                             .value[index];
    //                         return SliderfreshlybaItemWidget(model);
    //                        }))),
    //                Obx(() => Container(
    //                    height: getVerticalSize(7),
    //                    margin: getMargin(top: 23),
    //                    child: AnimatedSmoothIndicator(
    //                        activeIndex: controller.sliderIndex.value,
    //                        count: controller.onboardingOneModelObj.value
    //                            .sliderfreshlybaItemList.value.length,
    //                        axisDirection: Axis.horizontal,
    //                        effect: ScrollingDotsEffect(
    //                            spacing: 6,
    //                            activeDotColor: theme.colorScheme.primary,
    //                            dotColor: theme.colorScheme.primary
    //                                .withOpacity(0.46),
    //                            dotHeight: getVerticalSize(7),
    //                            dotWidth: getHorizontalSize(7))))),
    //                CustomElevatedButton(
    //                    height: getVerticalSize(56),
    //                    text: "lbl_next".tr,
    //                    margin: getMargin(left: 8, top: 41, bottom: 5),
    //                    buttonStyle: CustomButtonStyles.fillPrimary,
    //                    buttonTextStyle:
    //                    CustomTextStyles.titleMediumOnPrimaryBold,
    //                    onTap: () {
    //                     onTapNext();
    //                    })
    //               ]))));
 }

 onTapTxtSkip() {
  Get.toNamed(
   AppRoutes.loginWithActiveScreen,
  );
 }

 onTapNext() {
  Get.toNamed(
   AppRoutes.onboardingOneTwoScreen,
  );
 }
}




