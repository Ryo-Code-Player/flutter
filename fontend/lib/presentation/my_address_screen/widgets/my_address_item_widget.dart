import '../controller/my_address_controller.dart';
import '../models/my_address_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MyAddressItemWidget extends StatelessWidget {
  MyAddressItemWidget(
    this.myAddressItemModelObj, this.index, {
    Key? key,
    this.onTapDefault,
  }) : super(
          key: key,
        );

  MyAddressItemModel myAddressItemModelObj;
  int index;

  var controller = Get.find<MyAddressController>();

  VoidCallback? onTapDefault;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(
        top: 20,
        bottom: 20,
      ),
      decoration: AppDecoration.white,
      child: Padding(
        padding:getPadding(left: 20,right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: getSize(34),
                  width: getSize(34),
                  decoration: AppDecoration.fillGray200.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: CustomIconButton(
                    height: 34,
                    width: 34,
                    padding: getPadding(
                      all: 7,
                    ),
                    decoration: IconButtonStyleHelper.fillGray,
                    alignment: Alignment.center,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgEyePrimary,
                    ),
                  ),
                ),
                SizedBox(width: getHorizontalSize(20),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      myAddressItemModelObj.addressCategory!,
                      style: CustomTextStyles.titleMediumMedium,
                    ),
                    Container(
                      width: getSize(229),
                      child: Padding(
                        padding: getPadding(
                          top: 5,
                        ),
                        child:  Text(
                          "${ myAddressItemModelObj.address!}, ${myAddressItemModelObj.city!}, ${myAddressItemModelObj.city!}, ${myAddressItemModelObj.pincode!}",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: getVerticalSize(5),),
                    Text( myAddressItemModelObj.phoneNumber!,style: theme.textTheme.bodyLarge,)
                  ],
                ),
              ],
            ),
            Row(
              children: [
               index==0?
               Text("lbl_default".tr,style:CustomTextStyles.titleSmallPrimary ,)
               :SizedBox(),
                SizedBox(width: getHorizontalSize(11),),
                CustomImageView(
                  onTap: () {
                    onTapDefault?.call();
                  },
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgMoreVert,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
