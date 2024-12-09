import '../controller/my_coupon_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyCouponEmptyScreen.
///
/// This class ensures that the MyCouponEmptyController is created when the
/// MyCouponEmptyScreen is first loaded.
class MyCouponEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCouponEmptyController());
  }
}
