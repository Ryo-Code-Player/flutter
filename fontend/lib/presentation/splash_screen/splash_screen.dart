import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

import 'controller/splash_controller.dart';

// ignore: must_be_immutable
class SplashScreen extends GetWidget<SplashController> {
   SplashScreen({Key? key}) : super(key: key);
  SplashController splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
                width: double.maxFinite,
                child: CustomImageView(
                    svgPath: ImageConstant.imgCupcake1,
                    height: getSize(130),
                    width: getSize(130),
                    alignment: Alignment.center,
                    margin: getMargin(bottom: 5)))));
  }
}
