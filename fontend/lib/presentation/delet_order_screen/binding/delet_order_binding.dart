import '../controller/delet_order_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DeletOrderScreen.
///
/// This class ensures that the DeletOrderController is created when the
/// DeletOrderScreen is first loaded.
class DeletOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeletOrderController());
  }
}
