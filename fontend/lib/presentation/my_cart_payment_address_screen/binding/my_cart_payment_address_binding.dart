import '../controller/my_cart_payment_address_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyCartPaymentAddressScreen.
///
/// This class ensures that the MyCartPaymentAddressController is created when the
/// MyCartPaymentAddressScreen is first loaded.
class MyCartPaymentAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCartPaymentAddressController());
  }
}
