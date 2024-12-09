import '../controller/order_confirm_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderConfirmScreen.
///
/// This class ensures that the OrderConfirmController is created when the
/// OrderConfirmScreen is first loaded.
class OrderConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderConfirmController());
  }
}
