import '../controller/my_orders_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyOrdersScreen.
///
/// This class ensures that the MyOrdersController is created when the
/// MyOrdersScreen is first loaded.
class MyOrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyOrdersController());
  }
}
