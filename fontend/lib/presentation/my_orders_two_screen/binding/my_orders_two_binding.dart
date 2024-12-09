import '../controller/my_orders_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyOrdersTwoScreen.
///
/// This class ensures that the MyOrdersTwoController is created when the
/// MyOrdersTwoScreen is first loaded.
class MyOrdersTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyOrdersTwoController());
  }
}
