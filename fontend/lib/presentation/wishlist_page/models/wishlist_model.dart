import 'package:get/get.dart';import 'productdetails4_item_model.dart';/// This class defines the variables used in the [wishlist_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WishlistModel {Rx<List<Productdetails4ItemModel>> productdetails4ItemList = Rx(List.generate(6,(index) => Productdetails4ItemModel()));

 }
