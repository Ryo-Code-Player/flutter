import '../controller/notifications_controller.dart';
import '../models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget(
    this.notificationsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationsItemModel notificationsItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 13,
        right: 16,
        bottom: 13,
      ),
      decoration: AppDecoration.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgNotification,
            height: getSize(24),
            width: getSize(24),
            margin: getMargin(
              bottom: 26,
            ),
          ),
          Expanded(
            child: Padding(
              padding: getPadding(
                left: 10,
                top: 2,
                bottom: 1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    notificationsItemModelObj.title!,
                    style: theme.textTheme.titleSmall,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Text(
                      notificationsItemModelObj.msg!,
                      style: CustomTextStyles.bodyMedium13_1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 3,
              top: 2,
              bottom: 30,
            ),
            child: Text(
              notificationsItemModelObj.time!,
              style: CustomTextStyles.bodyMediumGray700_2,
            ),
          ),
        ],
      ),
    );
  }
}
