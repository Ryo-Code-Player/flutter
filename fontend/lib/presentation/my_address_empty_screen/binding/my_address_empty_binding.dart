import '../controller/my_address_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyAddressEmptyScreen.
///
/// This class ensures that the MyAddressEmptyController is created when the
/// MyAddressEmptyScreen is first loaded.
class MyAddressEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyAddressEmptyController());
  }
}
