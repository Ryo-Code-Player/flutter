import 'package:flutter/material.dart';

/// A controller class for the MyCouponScreen.
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/my_coupon_screen/models/my_coupon_model.dart';

import '../models/coupon_data.dart';

///
/// This class manages the state of the MyCouponScreen, including the
/// current myCouponModelObj
class MyCouponController extends GetxController {
  TextEditingController inputlabeloneController = TextEditingController();

  List<MyCouponModel> coupons = CouponData.getCouponData();
  String currentCoupon = '';

  void setCurrentCouponCode(String? couponCode) {
    currentCoupon = couponCode!;
    update();
  }


}
