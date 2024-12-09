import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';

import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return true;
      },
      child: ColorfulSafeArea(
          color: appTheme.white,
          child: Scaffold(
              resizeToAvoidBottomInset: false,
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
                  title: AppbarTitle(text: "Privacy Policy"),
                  styleType: Style.bgFill),
              body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          Padding(
                            padding: getPadding(top: 10, bottom: 10),
                            child: Container(
                              color: appTheme.white,
                              child: Padding(
                                  padding: getPadding(all: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      question("1.Types of data we collect"),
                                      SizedBox(
                                        height: getVerticalSize(16),
                                      ),
                                      answer(
                                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Padding(
                            padding: getPadding(top: 10, bottom: 10),
                            child: Container(
                                color: appTheme.white,
                                child: Padding(
                                  padding: getPadding(all: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      question("2. Use of your personal Data"),
                                      SizedBox(
                                        height: getVerticalSize(16),
                                      ),
                                      answer(
                                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                          Padding(
                              padding: getPadding(top: 10, bottom: 10),
                              child: Container(
                                color: appTheme.white,
                                child: Padding(
                                  padding: getPadding(all: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      question(
                                          "3. Disclosure of your personal Data"),
                                      SizedBox(
                                        height: getVerticalSize(16),
                                      ),
                                      answer(
                                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    )
                  ]))),
    );
  }

  question(String s) {
    return Text(
      s,
      style: CustomTextStyles.txtSFProDisplay17width700,
      maxLines: 1,
    );
  }

  answer(String s) {
    return Text(s, style: CustomTextStyles.txtSFProDisplayRegular14);
  }
}
