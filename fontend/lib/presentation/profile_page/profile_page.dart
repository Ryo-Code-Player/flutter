import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/widgets/app_bar/appbar_title.dart';
import 'package:flutterbekeryapp/widgets/app_bar/custom_app_bar.dart';
import '../my_address_delete_one_screen/my_address_delete_one_screen.dart';
import 'controller/profile_controller.dart';
import 'models/profile_model.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
 ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

 @override
 Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);
  return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillGray10002,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           CustomAppBar(
               height: getVerticalSize(81),
               leadingWidth: 42,
               centerTitle: true,
               title: AppbarTitle(text: "lbl_profile".tr),
               styleType: Style.bgFillWhiteA700),
           SizedBox(height: getVerticalSize(12),),
            Expanded(
              child: Padding(
                padding: getPadding(bottom: 16),
                child: Container(
                  color: appTheme.white,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: getPadding(left: 20,right: 20,bottom: 0,top: 24),
                      child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath:
                                ImageConstant.imgEllipse225,
                                height: getSize(100),
                                width: getSize(100),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(50))),
                            Padding(
                                padding: getPadding(top: 22),
                                child: Text(
                                    "lbl_ronald_richards2".tr,
                                    style: theme
                                        .textTheme.titleMedium)),
                            Padding(
                                padding: getPadding(top: 10),
                                child: Text(
                                    "msg_ronaldrichards_gmail_com"
                                        .tr,
                                    style: CustomTextStyles
                                        .bodyLargeGray700)),


                            SizedBox(height: getVerticalSize(24),),
                            getProfileOption( () {onTapProfile();},ImageConstant.imgUser, "lbl_my_profile".tr),
                            SizedBox(height: getVerticalSize(18),),
                            getProfileOption( () {onTapProfile1();},ImageConstant.imgSignal, "lbl_my_address2".tr),
                            SizedBox(height: getVerticalSize(18),),
                            getProfileOption( () {
                              Get.toNamed(AppRoutes.myOrdersTwoScreen);
                            },ImageConstant.imgLock, "lbl_my_orders".tr),
                            SizedBox(height: getVerticalSize(18),),
                            getProfileOption( () {Get.toNamed(AppRoutes.wishlistPage);},ImageConstant.imgFavorite, "My Wishlist".tr),
                            SizedBox(height: getVerticalSize(18),),
                            getProfileOption( () {onTapProfile2();},ImageConstant.imgSave, "lbl_my_cards".tr),
                            SizedBox(height: getVerticalSize(18),),
                            getProfileOption( () {Get.toNamed(AppRoutes.settingsScreen);},ImageConstant.imgSettingsBlack900, "lbl_settings".tr),
                            SizedBox(height: getVerticalSize(18),),
                            getProfileOption( () {

                              Get.dialog(AlertDialog(
                                backgroundColor: Colors.transparent,
                                contentPadding: EdgeInsets.zero,
                                insetPadding:  EdgeInsets.only(left: 0),
                                content: MyAddressDeleteOneScreen(

                                ),
                              ));

                            },ImageConstant.imgRefresh, "lbl_log_out".tr),

                          ]),
                    ),
                  ),
                ),
              ),
            )
          ]));
 }

 onTapProfile() {
  Get.toNamed(
   AppRoutes.myProfileScreen,
  );
 }


 onTapProfile1() {
  Get.toNamed(
   AppRoutes.myAddressScreen,
  );
 }

 onTapProfile2() {
  Get.toNamed(
   AppRoutes.myCardsDetailsScreen,
  );
 }

 Widget getProfileOption(function,icon,title){
   return GestureDetector(
     onTap: function,
     child:   Container(
       decoration: BoxDecoration(
           border: Border(bottom: BorderSide(color: appTheme.black10))
       ),
       child: Padding(
         padding:getPadding(bottom: 20),
         child: Row(
             mainAxisAlignment:
             MainAxisAlignment
                 .center,
             children: [
               CustomImageView(
                   svgPath:
                  icon,
                   height:
                   getSize(24),
                   width: getSize(
                       24)),
               Padding(
                   padding:
                   getPadding(
                       left:
                       14,
                       top: 3),
                   child: Text(
                     title,
                       style: theme
                           .textTheme
                           .bodyLarge)),
               Spacer(),
               CustomImageView(
                   svgPath:
                   ImageConstant
                       .imgArrowright,
                   height:
                   getSize(16),
                   width:
                   getSize(16),
                   margin:
                   getMargin(
                       top: 4,
                       bottom:
                       4))
             ]),
       ),
     ),
   );
 }
}