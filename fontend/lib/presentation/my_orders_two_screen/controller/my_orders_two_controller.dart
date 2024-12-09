import 'package:flutterbekeryapp/core/app_export.dart';

import '../models/header_item_model.dart';
import '../models/my_order_model.dart';

/// A controller class for the MyOrdersTwoScreen.
///
/// This class manages the state of the MyOrdersTwoScreen, including the
/// current myOrdersTwoModelObj
class MyOrdersTwoController extends GetxController {
 bool isNavigateOrderConfirmScreen = false;
 List<MyOrderItemModel> getOrderData = HeaderItemModel.getMyOrderData();
}
