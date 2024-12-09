import '../controller/add_new_address_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddNewAddressOneScreen.
///
/// This class ensures that the AddNewAddressOneController is created when the
/// AddNewAddressOneScreen is first loaded.
class AddNewAddressOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewAddressOneController());
  }
}
