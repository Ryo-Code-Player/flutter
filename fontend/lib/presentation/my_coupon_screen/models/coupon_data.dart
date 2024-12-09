import 'my_coupon_model.dart';

class CouponData{
  static List<MyCouponModel> getCouponData(){
    return [
      MyCouponModel("HOLIDAYDEAL"),
      MyCouponModel("ERFTGW"),
      MyCouponModel("SWEETEN"),
    ];
  }
}