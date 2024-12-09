import '../../categories_screen/models/cupcake_item_model.dart';
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

// ignore: must_be_immutable
class CategorieItemWidget extends StatelessWidget {
  CategorieItemWidget(
    this.categorieItemModelObj, {
    Key? key,
    this.onTapCategorie,
  }) : super(
          key: key,
        );

  CupcakeItemModel categorieItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapCategorie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapCategorie?.call();
        },
        child: Column(
          children: [
            Container(
              height: getSize(100.55),
              width: getSize(102),
              decoration: AppDecoration.fillGray100.copyWith(
                shape: BoxShape.circle,
                // borderRadius: BorderRadiusStyle.circleBorder40,
              ),
              child: Padding(
                padding: getPadding(top: 26.39,bottom: 26.39,left: 12.75,right: 12.75),
                child: CustomImageView(
                  imagePath: categorieItemModelObj.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: getVerticalSize(9.75),
            ),
            Text(categorieItemModelObj.title!,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium,)
          ],
        )
    );






  }
}
