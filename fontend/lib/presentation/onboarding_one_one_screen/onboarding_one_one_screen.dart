import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../onboarding_one_one_screen/widgets/sliderfreshlyba2_item_widget.dart';
import 'controller/onboarding_one_one_controller.dart';
import 'models/sliderfreshlyba2_item_model.dart';

class OnboardingOneOneScreen extends GetWidget<OnboardingOneOneController> {
  const OnboardingOneOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 12, right: 12),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: getMargin(left: 4, right: 4),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgCoffee),
                                  fit: BoxFit.cover)),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgRectangle11,
                              height: getVerticalSize(390),
                              width: getHorizontalSize(382))),
                      Padding(
                          padding: getPadding(left: 17, top: 44, right: 20),
                          child: Obx(() => CarouselSlider.builder(
                              options: CarouselOptions(
                                  height: getVerticalSize(152),
                                  initialPage: 0,
                                  autoPlay: true,
                                  viewportFraction: 1.0,
                                  enableInfiniteScroll: false,
                                  scrollDirection: Axis.horizontal,
                                  onPageChanged: (index, reason) {
                                    controller.sliderIndex.value = index;
                                  }),
                              itemCount: controller.onboardingOneOneModelObj
                                  .value.sliderfreshlyba2ItemList.value.length,
                              itemBuilder: (context, index, realIndex) {
                                Sliderfreshlyba2ItemModel model = controller
                                    .onboardingOneOneModelObj
                                    .value
                                    .sliderfreshlyba2ItemList
                                    .value[index];
                                return Sliderfreshlyba2ItemWidget(model);
                              }))),
                      Obx(() => Container(
                          height: getVerticalSize(7),
                          margin: getMargin(top: 23),
                          child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex.value,
                              count: controller.onboardingOneOneModelObj.value
                                  .sliderfreshlyba2ItemList.value.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 6,
                                  activeDotColor: theme.colorScheme.primary,
                                  dotColor: theme.colorScheme.primary
                                      .withOpacity(0.46),
                                  dotHeight: getVerticalSize(7),
                                  dotWidth: getHorizontalSize(7))))),
                      CustomElevatedButton(
                          height: getVerticalSize(56),
                          text: "lbl_get_started".tr,
                          margin: getMargin(left: 8, top: 41, bottom: 10),
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimaryBold,
                          onTap: () {
                            onTapGetstarted();
                          })
                    ]))));
  }

  onTapGetstarted() {
    Get.toNamed(
      AppRoutes.loginWithActiveScreen,
    );
  }
}
