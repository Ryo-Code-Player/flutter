import '../controller/cakes_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CakesScreen.
///
/// This class ensures that the CakesController is created when the
/// CakesScreen is first loaded.
class CakesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CakesController());
  }
}
