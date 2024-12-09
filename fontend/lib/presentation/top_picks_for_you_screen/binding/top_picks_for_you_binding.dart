import '../controller/top_picks_for_you_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TopPicksForYouScreen.
///
/// This class ensures that the TopPicksForYouController is created when the
/// TopPicksForYouScreen is first loaded.
class TopPicksForYouBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopPicksForYouController());
  }
}
