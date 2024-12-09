import 'package:flutterbekeryapp/core/app_export.dart';import 'package:flutterbekeryapp/presentation/my_cart_payment_address_edit_screen/models/my_cart_payment_address_edit_model.dart';/// A controller class for the MyCartPaymentAddressEditScreen.
///
/// This class manages the state of the MyCartPaymentAddressEditScreen, including the
/// current myCartPaymentAddressEditModelObj
class MyCartPaymentAddressEditController extends GetxController {Rx<MyCartPaymentAddressEditModel> myCartPaymentAddressEditModelObj = MyCartPaymentAddressEditModel().obs;

Rx<bool> flatRate = false.obs;

Rx<bool> freevalue = false.obs;

Rx<bool> localPickup = false.obs;

 }
