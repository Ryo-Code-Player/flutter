import 'package:get/get.dart';import 'product_item_model.dart';/// This class defines the variables used in the [my_coupon_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCouponOneModel {Rx<List<ProductItemModel>> productItemList = Rx(List.generate(3,(index) => ProductItemModel()));

 }
