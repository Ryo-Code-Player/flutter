import '../controller/cup_cake_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CupCakeScreen.
///
/// This class ensures that the CupCakeController is created when the
/// CupCakeScreen is first loaded.
class CupCakeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CupCakeController());
  }
}
