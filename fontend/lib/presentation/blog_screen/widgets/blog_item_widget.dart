
import '../controller/blog_controller.dart';
import '../models/blog_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

// ignore: must_be_immutable
class BlogItemWidget extends StatelessWidget {
  BlogItemWidget(
    this.blogItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BlogItemModel blogItemModelObj;

  var controller = Get.find<BlogController>();

  @override
  Widget build(BuildContext context) {

    return
      GestureDetector(
        onTap: (){
          Get.toNamed(AppRoutes.blogDetailScreen);
        },
        child: Container(
        width: double.maxFinite,
        padding: getPadding(
          all: 12,
        ),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath:blogItemModelObj.image,
              height: getSize(124),
              width: getSize(124),
              radius: BorderRadius.circular(
                getHorizontalSize(16),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 23,
                top: 17,
                bottom: 14,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    blogItemModelObj.title!,
                    style: CustomTextStyles.titleMedium16,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Container(

                      width: getSize(206),

                      child: Text(
                        blogItemModelObj.subTitle!,maxLines: 2,

                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMedium13_1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          blogItemModelObj.date!,
                          style: theme.textTheme.bodySmall,
                        ),
                        Container(
                          height: getSize(4),
                          width: getSize(4),
                          margin: getMargin(
                            left: 8,
                            top: 5,
                            bottom: 6,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.gray700,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(2),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                          ),
                          child: Text(
                            blogItemModelObj.time!,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    ),
      );
  }
}
