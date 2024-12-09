import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/my_address_delete_dialog/controller/my_address_delete_controller.dart';
import 'package:flutterbekeryapp/presentation/my_address_delete_dialog/my_address_delete_dialog.dart';
import 'package:flutterbekeryapp/presentation/my_address_edit_delete_bottomsheet/controller/my_address_edit_delete_controller.dart';
import 'package:flutterbekeryapp/presentation/my_address_edit_delete_bottomsheet/my_address_edit_delete_bottomsheet.dart';

import 'controller/app_navigation_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(child: Scaffold(
        backgroundColor: theme.colorScheme.inverseSurface,
        body: SizedBox(width: getHorizontalSize(375),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(decoration: AppDecoration.fillInverseSurface,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(alignment: Alignment.centerLeft,
                                child: Padding(padding: getPadding(
                                    left: 20, top: 10, right: 20, bottom: 10),
                                    child: Text("lbl_app_navigation".tr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: appTheme
                                            .black900,
                                            fontSize: getFontSize(20),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400)))),
                            Align(alignment: Alignment.centerLeft,
                                child: Padding(padding: getPadding(left: 20),
                                    child: Text("msg_check_your_app_s".tr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: appTheme
                                            .blueGray400,
                                            fontSize: getFontSize(16),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400)))),
                            Padding(padding: getPadding(top: 5),
                                child: Divider(height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.black900))
                          ])),
                  Expanded(child: SingleChildScrollView(child: Container(
                      decoration: AppDecoration.fillInverseSurface,
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [GestureDetector(onTap: () {
                            onTapSplashScreen();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_splash_screen".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapGrid();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_grid".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapOnboardingOne();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_onboarding_one".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapOnboardingOneTwo();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_onboarding_one_two".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapOnboardingOneOne();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_onboarding_one_one".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapLoginWitherror();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_login_with_error".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapLoginwithactive();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_login_with_active".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSignUp();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_sign_up".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapForgotpassword();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "lbl_forgot_password".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapVerification();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_verification".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapResetpassword();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_reset_password".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapResetpasswordsuccess();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_reset_password_success".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapHomeContainer();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("msg_home_container".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSearch();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_search2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            // onTapCategories();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_categories".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapCategories2grid();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_categories_2_grid".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapTopPicksforyou();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_top_picks_for_you".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapOurSpeciality();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_our_speciality".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapCakes();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_cakes".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapCupCake();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_cup_cake".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSweets();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_sweets".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapDetailTabContainer();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_detail_tab_container".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapDetailTwo();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_detail_two".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapDetailImage();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_detail_image".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMycart();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_my_cart2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapDeletOrder();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_delet_order".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyCouponEmpty();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "lbl_my_coupon_empty".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyCoupon();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_my_coupon".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyCouponOne();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_my_coupon_one".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapPayment();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_payment".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapAddNewAddress();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "lbl_add_new_address2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMycartPaymentaddress();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_my_cart_payment".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMycartPaymentaddressedit();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_my_cart_payment2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapOrderConfirm();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_order_confirm".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapWishlistempty();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("msg_wishlist_empty".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyProfile();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_my_profile".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapEditProfile();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_edit_profile".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyAddressEmpty();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_my_address_empty".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapAddNewAddressOne();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_add_new_address".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyAddress();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_my_address2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            // onTapMyAddressEditDelete();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_my_address_edit".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapEditAddress();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_edit_address".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyAddressdelete();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_my_address_delete".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyCardsEmpty();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_my_cards_empty".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapAddaCarddefualt();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_add_a_card_defualt".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapAddaCardActive();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_add_a_card_active".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyCardsdetails();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_my_cards_details".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapSettings();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_settings".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapNotificationsEmpty();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_notifications_empty".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapNotifications();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_notifications".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyAddressdeleteOne();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text(
                                                "msg_my_address_delete2".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyOrders();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_my_orders".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyOrdersTwo();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_my_orders_two".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapMyOrdersOne();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_my_orders_one".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapRating();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_rating".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapBlog();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_blog".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ]))), GestureDetector(onTap: () {
                            onTapBlogDetail();
                          }, child: Container(decoration: AppDecoration
                              .fillInverseSurface,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(alignment: Alignment.centerLeft,
                                        child: Padding(padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                            child: Text("lbl_blog_detail".tr,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: appTheme.black900,
                                                    fontSize: getFontSize(20),
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight
                                                        .w400)))),
                                    Padding(padding: getPadding(top: 5),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.blueGray400))
                                  ])))
                          ]))))
                ]))));
  }

  /// Navigates to the splashScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the splashScreen.
  onTapSplashScreen() {
    Get.toNamed(AppRoutes.splashScreen,);
  }

  /// Navigates to the gridScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the gridScreen.
  onTapGrid() {
    Get.toNamed(AppRoutes.gridScreen,);
  }

  /// Navigates to the onboardingOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the onboardingOneScreen.
  onTapOnboardingOne() {
    Get.toNamed(AppRoutes.onboardingOneScreen,);
  }

  /// Navigates to the onboardingOneTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the onboardingOneTwoScreen.
  onTapOnboardingOneTwo() {
    Get.toNamed(AppRoutes.onboardingOneTwoScreen,);
  }

  /// Navigates to the onboardingOneOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the onboardingOneOneScreen.
  onTapOnboardingOneOne() {
    Get.toNamed(AppRoutes.onboardingOneOneScreen,);
  }

  /// Navigates to the loginWithErrorScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the loginWithErrorScreen.
  onTapLoginWitherror() {
    Get.toNamed(AppRoutes.loginWithErrorScreen,);
  }

  /// Navigates to the loginWithActiveScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the loginWithActiveScreen.
  onTapLoginwithactive() {
    Get.toNamed(AppRoutes.loginWithActiveScreen,);
  }

  /// Navigates to the signUpScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the signUpScreen.
  onTapSignUp() {
    Get.toNamed(AppRoutes.signUpScreen,);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the forgotPasswordScreen.
  onTapForgotpassword() {
    Get.toNamed(AppRoutes.forgotPasswordScreen,);
  }

  /// Navigates to the verificationScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the verificationScreen.
  onTapVerification() {
    Get.toNamed(AppRoutes.verificationScreen,);
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the resetPasswordScreen.
  onTapResetpassword() {
    Get.toNamed(AppRoutes.resetPasswordScreen,);
  }

  /// Navigates to the resetPasswordSuccessScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the resetPasswordSuccessScreen.
  onTapResetpasswordsuccess() {
    Get.toNamed(AppRoutes.resetPasswordSuccessScreen,);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeContainerScreen.
  onTapHomeContainer() {
    Get.toNamed(AppRoutes.homeContainerScreen,);
  }

  /// Navigates to the searchScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the searchScreen.
  onTapSearch() {
    Get.toNamed(AppRoutes.searchScreen,);
  }

  /// Navigates to the categoriesScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the categoriesScreen.
  // onTapCategories() {
  //   Get.toNamed(AppRoutes.categoriesScreen,);
  // }

  /// Navigates to the categories2GridScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the categories2GridScreen.
  onTapCategories2grid() {
    Get.toNamed(AppRoutes.categories2GridScreen,);
  }

  /// Navigates to the topPicksForYouScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the topPicksForYouScreen.
  onTapTopPicksforyou() {
    Get.toNamed(AppRoutes.topPicksForYouScreen,);
  }

  /// Navigates to the ourSpecialityScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the ourSpecialityScreen.
  onTapOurSpeciality() {
    Get.toNamed(AppRoutes.ourSpecialityScreen,);
  }

  /// Navigates to the cakesScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the cakesScreen.
  onTapCakes() {
    Get.toNamed(AppRoutes.cakesScreen,);
  }

  /// Navigates to the cupCakeScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the cupCakeScreen.
  onTapCupCake() {
    Get.toNamed(AppRoutes.cupCakeScreen,);
  }

  /// Navigates to the sweetsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the sweetsScreen.
  onTapSweets() {
    Get.toNamed(AppRoutes.sweetsScreen,);
  }

  /// Navigates to the detailTabContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the detailTabContainerScreen.
  onTapDetailTabContainer() {
    Get.toNamed(AppRoutes.detailTabContainerScreen,);
  }

  /// Navigates to the detailTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the detailTwoScreen.
  onTapDetailTwo() {
    Get.toNamed(AppRoutes.detailTwoScreen,);
  }

  /// Navigates to the detailImageScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the detailImageScreen.
  onTapDetailImage() {
    Get.toNamed(AppRoutes.detailImageScreen,);
  }

  /// Navigates to the myCartScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myCartScreen.
  onTapMycart() {
    Get.toNamed(AppRoutes.myCartScreen,);
  }

  /// Navigates to the deletOrderScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the deletOrderScreen.
  onTapDeletOrder() {
    Get.toNamed(AppRoutes.deletOrderScreen,);
  }

  /// Navigates to the myCouponEmptyScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myCouponEmptyScreen.
  onTapMyCouponEmpty() {
    Get.toNamed(AppRoutes.myCouponEmptyScreen,);
  }

  /// Navigates to the myCouponScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myCouponScreen.
  onTapMyCoupon() {
    Get.toNamed(AppRoutes.myCouponScreen,);
  }

  /// Navigates to the myCouponOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myCouponOneScreen.
  onTapMyCouponOne() {
    Get.toNamed(AppRoutes.myCouponOneScreen,);
  }

  /// Navigates to the paymentScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the paymentScreen.
  onTapPayment() {
    Get.toNamed(AppRoutes.paymentScreen,);
  }

  /// Navigates to the addNewAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the addNewAddressScreen.
  onTapAddNewAddress() {
    Get.toNamed(AppRoutes.addNewAddressScreen,);
  }

  /// Navigates to the myCartPaymentAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myCartPaymentAddressScreen.
  onTapMycartPaymentaddress() {
    Get.toNamed(AppRoutes.myCartPaymentAddressScreen,);
  }

  /// Navigates to the myCartPaymentAddressEditScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myCartPaymentAddressEditScreen.
  onTapMycartPaymentaddressedit() {
    Get.toNamed(AppRoutes.myCartPaymentAddressEditScreen,);
  }

  /// Navigates to the orderConfirmScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the orderConfirmScreen.
  onTapOrderConfirm() {
    Get.toNamed(AppRoutes.orderConfirmScreen,);
  }

  /// Navigates to the wishlistEmptyScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the wishlistEmptyScreen.
  onTapWishlistempty() {
    Get.toNamed(AppRoutes.wishlistEmptyScreen,);
  }

  /// Navigates to the myProfileScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myProfileScreen.
  onTapMyProfile() {
    Get.toNamed(AppRoutes.myProfileScreen,);
  }

  /// Navigates to the editProfileScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the editProfileScreen.
  onTapEditProfile() {
    Get.toNamed(AppRoutes.editProfileScreen,);
  }

  /// Navigates to the myAddressEmptyScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myAddressEmptyScreen.
  onTapMyAddressEmpty() {
    Get.toNamed(AppRoutes.myAddressEmptyScreen,);
  }

  /// Navigates to the addNewAddressOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the addNewAddressOneScreen.
  onTapAddNewAddressOne() {
    Get.toNamed(AppRoutes.addNewAddressOneScreen,);
  }

  /// Navigates to the myAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myAddressScreen.
  onTapMyAddress() {
    Get.toNamed(AppRoutes.myAddressScreen,);
  }


  /// Displays a scrollable bottom sheet widget using the GetX package
  /// and the [MyAddressEditDeleteBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [MyAddressEditDeleteController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

// onTapMyAddressEditDelete() { Get.bottomSheet(MyAddressEditDeleteBottomsheet(Get.put(MyAddressEditDeleteController()),MyAddressItemModel model),isScrollControlled: true,); }
// /// Navigates to the editAddressScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the editAddressScreen.
  onTapEditAddress() {
    Get.toNamed(AppRoutes.editAddressScreen,);
  }


  /// Displays a dialog with the [MyAddressDeleteDialog] content.
  ///
  /// The [MyAddressDeleteDialog] widget is created with a new
  /// instance of the [MyAddressDeleteController],
  /// which is obtained using the Get.put() method.
  onTapMyAddressdelete() {
    Get.dialog(AlertDialog(backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: MyAddressDeleteDialog(Get.put(MyAddressDeleteController(),),),));
  }

  /// Navigates to the myCardsEmptyScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myCardsEmptyScreen.
  onTapMyCardsEmpty() {
    Get.toNamed(AppRoutes.myCardsEmptyScreen,);
  }

  /// Navigates to the addACardDefualtScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the addACardDefualtScreen.
  onTapAddaCarddefualt() {
    Get.toNamed(AppRoutes.addACardDefualtScreen,);
  }

  /// Navigates to the addACardActiveScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the addACardActiveScreen.
  onTapAddaCardActive() {
    Get.toNamed(AppRoutes.addACardActiveScreen,);
  }

  /// Navigates to the myCardsDetailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myCardsDetailsScreen.
  onTapMyCardsdetails() {
    Get.toNamed(AppRoutes.myCardsDetailsScreen,);
  }

  /// Navigates to the settingsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the settingsScreen.
  onTapSettings() {
    Get.toNamed(AppRoutes.settingsScreen,);
  }

  /// Navigates to the notificationsEmptyScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the notificationsEmptyScreen.
  onTapNotificationsEmpty() {
    Get.toNamed(AppRoutes.notificationsEmptyScreen,);
  }

  /// Navigates to the notificationsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the notificationsScreen.
  onTapNotifications() {
    Get.toNamed(AppRoutes.notificationsScreen,);
  }

  /// Navigates to the myAddressDeleteOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myAddressDeleteOneScreen.
  onTapMyAddressdeleteOne() {
    Get.toNamed(AppRoutes.myAddressDeleteOneScreen,);
  }

  /// Navigates to the myOrdersScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myOrdersScreen.
  onTapMyOrders() {
    Get.toNamed(AppRoutes.myOrdersScreen,);
  }

  /// Navigates to the myOrdersTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myOrdersTwoScreen.
  onTapMyOrdersTwo() {
    Get.toNamed(AppRoutes.myOrdersTwoScreen,);
  }

  /// Navigates to the myOrdersOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the myOrdersOneScreen.
  onTapMyOrdersOne() {
    Get.toNamed(AppRoutes.myOrdersOneScreen,);
  }

  /// Navigates to the ratingScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the ratingScreen.
  onTapRating() {
    Get.toNamed(AppRoutes.ratingScreen,);
  }

  /// Navigates to the blogScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the blogScreen.
  onTapBlog() {
    Get.toNamed(AppRoutes.blogScreen,);
  }

  /// Navigates to the blogDetailScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the blogDetailScreen.
  onTapBlogDetail() {
    Get.toNamed(AppRoutes.blogDetailScreen,);
  }
}
