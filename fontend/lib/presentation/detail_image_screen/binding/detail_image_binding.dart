import '../controller/detail_image_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailImageScreen.
///
/// This class ensures that the DetailImageController is created when the
/// DetailImageScreen is first loaded.
class DetailImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailImageController());
  }
}
