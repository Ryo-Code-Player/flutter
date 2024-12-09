import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/presentation/my_orders_screen/models/my_orders_model.dart';/// A controller class for the MyOrdersScreen.
///
/// This class manages the state of the MyOrdersScreen, including the
/// current myOrdersModelObj
class MyOrdersController extends GetxController {Rx<MyOrdersModel> myOrdersModelObj = MyOrdersModel().obs;

 }
