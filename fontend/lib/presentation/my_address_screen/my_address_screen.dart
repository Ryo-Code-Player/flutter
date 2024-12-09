import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/my_address_edit_delete_bottomsheet/controller/my_address_edit_delete_controller.dart';
import 'package:flutterbekeryapp/presentation/my_address_edit_delete_bottomsheet/my_address_edit_delete_bottomsheet.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_image_1.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';

import '../my_address_screen/widgets/my_address_item_widget.dart';
import 'controller/my_address_controller.dart';
import 'models/my_address_item_model.dart';



class MyAddressScreen extends StatefulWidget {
  const MyAddressScreen({super.key});

  @override
  State<MyAddressScreen> createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
 MyAddressController controller = Get.put(MyAddressController());
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
       child:Scaffold(
           backgroundColor: appTheme.gray10002,
           appBar: CustomAppBar(
               height: getVerticalSize(73),
               leadingWidth: getHorizontalSize(44),
               leading: AppbarImage(
                   svgPath: ImageConstant.imgArrowleft,
                   margin: getMargin(left: 20, top: 24, bottom: 25),
                   onTap: () {
                    onTapArrowleftone();
                   }),
               centerTitle: true,
               title: AppbarTitle(text: "lbl_my_address2".tr),
               actions: [
                AppbarImage1(
                    svgPath: ImageConstant.imgPlusBlack900,
                    margin:
                    getMargin(left: 20, top: 24, right: 20, bottom: 25),
                    onTap: () {
                     onTapPlusone();
                    })
               ],
               styleType: Style.bgFill),
           body: Padding(
               padding: getPadding(top: 12),
               child:ListView.separated(
                   physics: BouncingScrollPhysics(),
                   shrinkWrap: true,
                   separatorBuilder: (context, index) {
                     return SizedBox(height: getVerticalSize(20));
                   },
                   itemCount: controller.
                   getAddress.length,
                   itemBuilder: (context, index) {
                     MyAddressItemModel model = controller.getAddress[index];
                     return MyAddressItemWidget(model,index, onTapDefault: () {
                       onTapDefault(model);
                     });
                   })))),
  );
 }

 onTapDefault(model) {
  Get.bottomSheet(
      MyAddressEditDeleteBottomsheet(
          Get.put(MyAddressEditDeleteController()),model),
      isScrollControlled: true);
 }

 onTapArrowleftone() {
  Get.back();
 }

 onTapPlusone() {
  Get.toNamed(
   AppRoutes.addNewAddressScreen,
  );
 }
}






