import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/my_cart_one_page/models/shipping_mothod_model.dart';

import 'my_cart_one_item_model.dart';

/// This class defines the variables used in the [my_cart_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCartOneModel {
  // Rx<List<MyCartOneItemModel>> myCartOneItemList =
  //     Rx(List.generate(3, (index) => MyCartOneItemModel()));


  static List<MyCartOneItemModel> getCartItem(){
    return [
      MyCartOneItemModel(ImageConstant.imgCart1st,"Strawberry Cupcake","\$34.00","8cm",1),
      MyCartOneItemModel(ImageConstant.imgCart2nd,"Mango Cupcake","\$20.00","8cm",1),
      MyCartOneItemModel(ImageConstant.imgCart3rd,"Royal Chocolate cake","\$34.00","8cm",1),
    ];
  }

  static List<ShippingModel> getShippingMethos(){
    return [
      ShippingModel("Flat Rate",1),
      ShippingModel("Free",2),
      ShippingModel("Local Pickup",3),
    ];
  }
}
