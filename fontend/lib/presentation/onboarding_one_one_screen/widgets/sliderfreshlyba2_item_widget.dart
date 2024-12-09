import '../controller/onboarding_one_one_controller.dart';
import '../models/sliderfreshlyba2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

// ignore: must_be_immutable
class Sliderfreshlyba2ItemWidget extends StatelessWidget {
  Sliderfreshlyba2ItemWidget(
    this.sliderfreshlyba2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Sliderfreshlyba2ItemModel sliderfreshlyba2ItemModelObj;

  var controller = Get.find<OnboardingOneOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "msg_freshly_baked_goodness".tr,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineMedium,
        ),
        Padding(
          padding: getPadding(
            left: 30,
            top: 25,
            right: 25,
          ),
          child: Text(
            "msg_there_are_things".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
