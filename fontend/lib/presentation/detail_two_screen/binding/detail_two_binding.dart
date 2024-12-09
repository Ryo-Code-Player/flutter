import '../controller/detail_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailTwoScreen.
///
/// This class ensures that the DetailTwoController is created when the
/// DetailTwoScreen is first loaded.
class DetailTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailTwoController());
  }
}
