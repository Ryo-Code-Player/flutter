import '../controller/reset_password_success_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ResetPasswordSuccessScreen.
///
/// This class ensures that the ResetPasswordSuccessController is created when the
/// ResetPasswordSuccessScreen is first loaded.
class ResetPasswordSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordSuccessController());
  }
}
