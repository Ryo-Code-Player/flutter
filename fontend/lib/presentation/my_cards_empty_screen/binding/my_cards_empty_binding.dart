import '../controller/my_cards_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyCardsEmptyScreen.
///
/// This class ensures that the MyCardsEmptyController is created when the
/// MyCardsEmptyScreen is first loaded.
class MyCardsEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCardsEmptyController());
  }
}
