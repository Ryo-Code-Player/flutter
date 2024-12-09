import '../controller/my_orders_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyOrdersOneScreen.
///
/// This class ensures that the MyOrdersOneController is created when the
/// MyOrdersOneScreen is first loaded.
class MyOrdersOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyOrdersOneController());
  }
}
