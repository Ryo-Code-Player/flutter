import '../controller/my_coupon_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyCouponScreen.
///
/// This class ensures that the MyCouponController is created when the
/// MyCouponScreen is first loaded.
class MyCouponBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCouponController());
  }
}
