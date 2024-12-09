import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/presentation/my_orders_one_screen/models/my_orders_one_model.dart';/// A controller class for the MyOrdersOneScreen.
///
/// This class manages the state of the MyOrdersOneScreen, including the
/// current myOrdersOneModelObj
class MyOrdersOneController extends GetxController {Rx<MyOrdersOneModel> myOrdersOneModelObj = MyOrdersOneModel().obs;

Rx<bool> flatRate = false.obs;

Rx<bool> freevalue = false.obs;

Rx<bool> localPickup = false.obs;

 }
