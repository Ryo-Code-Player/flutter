import '../controller/login_with_active_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginWithActiveScreen.
///
/// This class ensures that the LoginWithActiveController is created when the
/// LoginWithActiveScreen is first loaded.
class LoginWithActiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginWithActiveController());
  }
}
