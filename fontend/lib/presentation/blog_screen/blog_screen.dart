import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import '../blog_screen/widgets/blog_item_widget.dart';
import 'controller/blog_controller.dart';
import 'models/blog_item_model.dart';




class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  BlogController controller = Get.put(BlogController());
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
                  child: Padding(
                      padding: getPadding(top: 16,left: 16,right: 16),
                      child: ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                                height: getVerticalSize(16));
                          },
                          itemCount: controller.blogData.length,
                          itemBuilder: (context, index) {
                            BlogItemModel model = controller.blogData[index];
                            return BlogItemWidget(model);
                          }))))),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}



