import '../controller/categories_2_grid_controller.dart';
import '../models/categorie1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

// ignore: must_be_immutable
class Categorie1ItemWidget extends StatelessWidget {
  Categorie1ItemWidget(
    this.categorie1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Categorie1ItemModel categorie1ItemModelObj;

  var controller = Get.find<Categories2GridController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(162),
            width: getHorizontalSize(165),
            padding: getPadding(
              left: 20,
              top: 42,
              right: 20,
              bottom: 42,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder81,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle37677x123,
              height: getVerticalSize(77),
              width: getHorizontalSize(123),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 26,
            ),
            child: Obx(
              () => Text(
                categorie1ItemModelObj.cakeTextTxt.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
