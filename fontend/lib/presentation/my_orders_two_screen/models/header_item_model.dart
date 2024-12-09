
import 'my_order_model.dart';

/// This class is used in the [header_item_widget] screen.

class HeaderItemModel {
  static List<MyOrderItemModel> getMyOrderData(){
    return [
      MyOrderItemModel("#576404","6:35 PM","20-March-2022","Pending"),
      MyOrderItemModel("#741235","6:35 PM","19-March-2022","Pending"),
      MyOrderItemModel("#545455","6:35 PM","19-March-2022","Cancelled"),
      MyOrderItemModel("#154955","6:30 PM","18-March-2022","Delivered"),
      MyOrderItemModel("#959656","6:20 PM","10-March-2022","Cancelled"),
      MyOrderItemModel("#575544","5:35 PM","9-March-2022","Pending"),
      MyOrderItemModel("#577854",":35 PM","4-March-2022","Delivered"),
    ];
  }
}
