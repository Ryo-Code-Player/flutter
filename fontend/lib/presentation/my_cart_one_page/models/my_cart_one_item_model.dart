import 'package:get/get.dart';

/// This class is used in the [my_cart_one_item_widget] screen.

class MyCartOneItemModel {
  Rx<String> strawberrycupcaTxt = Rx("Strawberry Cupcake");

  Rx<String>? id = Rx("");

  String? image;
  String? title;
  String? price;
  String? size;
  int? qty;
  MyCartOneItemModel(this.image,this.title,this.price,this.size,this.qty);

}
