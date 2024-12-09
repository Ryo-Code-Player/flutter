import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/notifications_screen/models/notifications_model.dart';

import '../models/notifications_item_model.dart';

/// A controller class for the NotificationsScreen.
///
/// This class manages the state of the NotificationsScreen, including the
/// current notificationsModelObj
class NotificationsController extends GetxController {
 List<NotificationsItemModel> notificationData =  NotificationsModel.notificationsItemList();
}
