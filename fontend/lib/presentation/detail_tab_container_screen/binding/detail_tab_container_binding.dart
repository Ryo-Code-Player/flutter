import '../controller/detail_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailTabContainerScreen.
///
/// This class ensures that the DetailTabContainerController is created when the
/// DetailTabContainerScreen is first loaded.
class DetailTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailTabContainerController());
  }
}
