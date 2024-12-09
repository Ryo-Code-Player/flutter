import '../controller/categories_2_grid_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Categories2GridScreen.
///
/// This class ensures that the Categories2GridController is created when the
/// Categories2GridScreen is first loaded.
class Categories2GridBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Categories2GridController());
  }
}
