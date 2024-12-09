import '../controller/onboarding_one_controller.dart';
import '../models/sliderfreshlyba_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

// ignore: must_be_immutable
class SliderfreshlybaItemWidget extends StatelessWidget {
  SliderfreshlybaItemWidget(
    this.sliderfreshlybaItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SliderfreshlybaItemModel sliderfreshlybaItemModelObj;

  var controller = Get.find<OnboardingOneController>();

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
