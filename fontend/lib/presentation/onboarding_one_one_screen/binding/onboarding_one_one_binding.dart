import '../controller/onboarding_one_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnboardingOneOneScreen.
///
/// This class ensures that the OnboardingOneOneController is created when the
/// OnboardingOneOneScreen is first loaded.
class OnboardingOneOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingOneOneController());
  }
}
