import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/order_confirm_screen/models/order_confirm_model.dart';

/// A controller class for the OrderConfirmScreen.
///
/// This class manages the state of the OrderConfirmScreen, including the
/// current orderConfirmModelObj
class OrderConfirmController extends GetxController {
  Rx<OrderConfirmModel> orderConfirmModelObj = OrderConfirmModel().obs;
}
