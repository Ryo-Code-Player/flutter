import '../controller/my_cards_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyCardsDetailsScreen.
///
/// This class ensures that the MyCardsDetailsController is created when the
/// MyCardsDetailsScreen is first loaded.
class MyCardsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCardsDetailsController());
  }
}
