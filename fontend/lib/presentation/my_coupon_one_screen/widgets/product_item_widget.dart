import '../../my_cart_one_page/models/my_cart_one_item_model.dart';
import '../controller/my_coupon_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';

// ignore: must_be_immutable
class ProductItemWidget extends StatelessWidget {
  ProductItemWidget(
    this.productItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MyCartOneItemModel productItemModelObj;
  MyCouponOneController myCouponOneController = Get.put(MyCouponOneController());

  var controller = Get.find<MyCouponOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: getSize(95),
          width: getSize(95),
          padding: getPadding(
            left: 22,
            top: 7,
            right: 22,
            bottom: 7,
          ),
          decoration: AppDecoration.fillGray10002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: CustomImageView(
            imagePath: productItemModelObj.image,
            height: getVerticalSize(80),
            width: getHorizontalSize(51),
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 6,
            bottom: 6,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                productItemModelObj.title!,
                style: CustomTextStyles.titleMedium16,
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Quantity : ",
                        style: CustomTextStyles.bodyMediumGray700,
                      ),
                      TextSpan(
                        text: productItemModelObj.qty.toString(),
                        style: CustomTextStyles.bodyMedium13,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 11,
                ),
                child: Text(
                  productItemModelObj.price!,
                  style: CustomTextStyles.bodyLarge_1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
