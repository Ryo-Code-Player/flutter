import '../controller/my_address_delete_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyAddressDeleteOneScreen.
///
/// This class ensures that the MyAddressDeleteOneController is created when the
/// MyAddressDeleteOneScreen is first loaded.
class MyAddressDeleteOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyAddressDeleteOneController());
  }
}
