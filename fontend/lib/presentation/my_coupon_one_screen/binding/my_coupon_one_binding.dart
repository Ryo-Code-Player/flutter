import '../controller/my_coupon_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyCouponOneScreen.
///
/// This class ensures that the MyCouponOneController is created when the
/// MyCouponOneScreen is first loaded.
class MyCouponOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCouponOneController());
  }
}
