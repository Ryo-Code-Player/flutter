import '../controller/our_speciality_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OurSpecialityScreen.
///
/// This class ensures that the OurSpecialityController is created when the
/// OurSpecialityScreen is first loaded.
class OurSpecialityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OurSpecialityController());
  }
}
