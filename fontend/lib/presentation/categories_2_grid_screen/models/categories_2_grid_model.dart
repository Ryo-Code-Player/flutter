import 'package:get/get.dart';import 'categorie1_item_model.dart';/// This class defines the variables used in the [categories_2_grid_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Categories2GridModel {Rx<List<Categorie1ItemModel>> categorie1ItemList = Rx(List.generate(10,(index) => Categorie1ItemModel()));

 }
