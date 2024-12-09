import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_item_model.dart';




class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
 NotificationsController controller = Get.put(NotificationsController());
 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return WillPopScope(
   onWillPop: () async {
    Get.back();
    return true;
   },
   child: ColorfulSafeArea(
       color: appTheme.white,
       child: Scaffold(
           backgroundColor: appTheme.gray10002,
           body: SizedBox(
               width: double.maxFinite,
               child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                    Container(
                        padding: getPadding(top: 22, bottom: 22),
                        decoration: AppDecoration.white,
                        child: CustomAppBar(
                            leadingWidth: getHorizontalSize(44),
                            leading: AppbarImage(
                                svgPath: ImageConstant.imgArrowleft,
                                margin:
                                getMargin(left: 20, top: 1, bottom: 1),
                                onTap: () {
                                 onTapArrowleftone();
                                }),
                            centerTitle: true,
                            title:
                            AppbarTitle(text: "lbl_notifications".tr))),
                    Expanded(
                        child: Padding(
                            padding: getPadding(left: 16, top: 16, right: 16),
                            child: controller.notificationData.isEmpty?
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: getSize(140),
                                    width: getSize(140),
                                    padding: getPadding(
                                        left: 27,
                                        top: 43,
                                        right: 27,
                                        bottom: 43),
                                    decoration: AppDecoration.fillGray200
                                        .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .circleBorder70),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgMail,
                                        height: getVerticalSize(52),
                                        width: getHorizontalSize(84),
                                        alignment: Alignment.center)),
                                Padding(
                                    padding: getPadding(top: 33),
                                    child: Text("msg_no_notification".tr,
                                        style: theme.textTheme.headlineMedium)),
                                Padding(
                                    padding: getPadding(top: 15, bottom: 5),
                                    child: Text(
                                        "msg_it_is_a_long_established".tr,
                                        style: theme.textTheme.bodyLarge))
                              ],
                            ):ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                      height: getVerticalSize(20));
                                },
                                itemCount: controller.notificationData.length,
                                itemBuilder: (context, index) {
                                  NotificationsItemModel model = controller.notificationData[index];
                                  return NotificationsItemWidget(model);
                                })))
                   ])))),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }
}




