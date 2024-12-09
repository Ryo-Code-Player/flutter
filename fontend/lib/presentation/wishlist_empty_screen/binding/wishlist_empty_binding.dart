import '../controller/wishlist_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WishlistEmptyScreen.
///
/// This class ensures that the WishlistEmptyController is created when the
/// WishlistEmptyScreen is first loaded.
class WishlistEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WishlistEmptyController());
  }
}
