import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import 'controller/blog_detail_controller.dart';




class BlogDetailScreen extends StatefulWidget {
  const BlogDetailScreen({super.key});

  @override
  State<BlogDetailScreen> createState() => _BlogDetailScreenState();
}

class _BlogDetailScreenState extends State<BlogDetailScreen> {
 BlogDetailController blogDetailController = Get.put(BlogDetailController());
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
               title: AppbarTitle(text: "lbl_blog".tr),
               styleType: Style.bgFill),
           body: SizedBox(
               width: double.maxFinite,
               child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [

                    Expanded(
                        child: SingleChildScrollView(
                            padding: getPadding(top: 12),
                            child: Container(
                                padding: getPadding(left: 20, right: 20),
                                decoration: AppDecoration.white,
                                child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                     Padding(
                                         padding: getPadding(top: 24),
                                         child: Text(
                                             "msg_a_deep_dive_into".tr,
                                             style: CustomTextStyles
                                                 .titleLarge20)),
                                     Padding(
                                         padding: getPadding(top: 10),
                                         child: Text("lbl_13_sep_2022".tr,
                                             style: CustomTextStyles
                                                 .bodyMediumGray700_2)),
                                     Container(
                                         width: getHorizontalSize(363),
                                         margin:
                                         getMargin(top: 19, right: 12),
                                         child: Text(
                                             "msg_world_of_bakeries".tr,
                                             maxLines: 5,
                                             overflow: TextOverflow.ellipsis,
                                             style:
                                             theme.textTheme.bodyLarge)),
                                     CustomImageView(
                                         imagePath:
                                         ImageConstant.imgBg212x374,
                                         height: getVerticalSize(212),
                                         width: getHorizontalSize(374),
                                         margin: getMargin(top: 15)),
                                     Container(
                                         width: getHorizontalSize(363),
                                         margin:
                                         getMargin(top: 18, right: 12),
                                         child: Text(
                                             "msg_world_of_bakeries".tr,
                                             maxLines: 5,
                                             overflow: TextOverflow.ellipsis,
                                             style:
                                             theme.textTheme.bodyLarge)),
                                     Container(
                                         width: getHorizontalSize(370),
                                         margin:
                                         getMargin(top: 18, right: 5),
                                         child: Text(
                                             "msg_bakeries_are_enchanted".tr,
                                             maxLines: 8,
                                             overflow: TextOverflow.ellipsis,
                                             style:
                                             theme.textTheme.bodyLarge)),
                                     Padding(
                                         padding: getPadding(top: 15),
                                         child: Text(
                                             "msg_most_hoyas_will".tr,
                                             style:
                                             theme.textTheme.bodyLarge))
                                    ]))))
                   ])))),
  );
 }

 onTapArrowleftone() {
  Get.back();
 }
}



