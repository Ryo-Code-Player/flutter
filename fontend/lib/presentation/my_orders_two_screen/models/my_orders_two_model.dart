import 'package:get/get.dart';

import 'header_item_model.dart';

/// This class defines the variables used in the [my_orders_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyOrdersTwoModel {
  Rx<List<HeaderItemModel>> headerItemList =
      Rx(List.generate(3, (index) => HeaderItemModel()));
}
