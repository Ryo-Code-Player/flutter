import '../controller/sweets_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SweetsScreen.
///
/// This class ensures that the SweetsController is created when the
/// SweetsScreen is first loaded.
class SweetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SweetsController());
  }
}
