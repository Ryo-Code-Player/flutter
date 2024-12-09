import '../controller/notifications_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationsEmptyScreen.
///
/// This class ensures that the NotificationsEmptyController is created when the
/// NotificationsEmptyScreen is first loaded.
class NotificationsEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsEmptyController());
  }
}
