import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/my_cart_one_page/models/my_cart_one_model.dart';

import '../models/my_cart_one_item_model.dart';
import '../models/shipping_mothod_model.dart';

/// A controller class for the MyCartOnePage.
///
/// This class manages the state of the MyCartOnePage, including the
/// current myCartOneModelObj
class MyCartOneController extends GetxController {


 List<MyCartOneItemModel> cartItem =  MyCartOneModel.getCartItem();

 List<ShippingModel> shippingMethods = MyCartOneModel.getShippingMethos();

int currentShipping = 1;


  Rx<bool> flatrate = false.obs;

  Rx<bool> free = false.obs;

  Rx<bool> localpickup = false.obs;

  void setCurrentShippingMethod(int? id) {
   currentShipping = id!;
   update();

  }
}
