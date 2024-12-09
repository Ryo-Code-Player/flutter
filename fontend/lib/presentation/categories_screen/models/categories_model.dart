

import '../../../core/utils/image_constant.dart';
import 'cupcake_item_model.dart';

/// This class defines the variables used in the [categories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesModel {
  // Rx<List<CupcakeItemModel>> cupcakeItemList =
  //     Rx(List.generate(12, (index) => CupcakeItemModel()));


  static List<CupcakeItemModel> getCategories(){
    return [
      CupcakeItemModel(ImageConstant.imgRectangle37648x76,"Cup Cake"),
      CupcakeItemModel(ImageConstant.imgRectangle3763,"Cake"),
      CupcakeItemModel(ImageConstant.imgRectangle3764,"Cookies"),
      CupcakeItemModel(ImageConstant.imgRectangle3765,"Donuts"),
      CupcakeItemModel(ImageConstant.imgRectangle3766,"Namkeen"),
      CupcakeItemModel(ImageConstant.imgRectangle3767,"Khari"),
      CupcakeItemModel(ImageConstant.imgRectangle3768,"Rusk"),
      CupcakeItemModel(ImageConstant.imgRectangle3769,"Bread"),
      CupcakeItemModel(ImageConstant.imgRectangle37610,"Chocolate"),
      CupcakeItemModel(ImageConstant.imgRectangle37611,"Pastry"),
      CupcakeItemModel(ImageConstant.imgRectangle37612,"Sweets"),
      CupcakeItemModel(ImageConstant.imgRectangle37613,"Khakhara"),
    ];
  }
}
