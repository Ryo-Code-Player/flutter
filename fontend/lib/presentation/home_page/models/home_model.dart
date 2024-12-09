import 'package:flutterbekeryapp/presentation/home_page/models/slidercar_item_model.dart';
import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';
import 'categorie_item_model.dart';
import 'discount_item_slider_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<CategorieItemModel>> categorieItemList =
      Rx(List.generate(4, (index) => CategorieItemModel()));

  static List<SlidercarItemModel> slidercarItemList(){
   return [
    SlidercarItemModel(ImageConstant.imgSlider1st,"50% Off On First Any Order"),
    SlidercarItemModel(ImageConstant.imgSlider2nd,"50% Off On First Any Order"),
    SlidercarItemModel(ImageConstant.imgSlider1st,"50% Off On First Any Order"),
   ];
  }

  static List<DiscountItemModel> getDiscountData(){
    return [
      DiscountItemModel(ImageConstant.imgDiscountSlider1st,"SWEETAN","Sweet up your day with 20% off all cupcakes"),
      DiscountItemModel(ImageConstant.imgDiscountSlider2nd,"HOLIDAYDEAL","Get 20% off your sweet treats with code"),
      DiscountItemModel(ImageConstant.imgDiscountSlider3rd,"ERFTGW","Get 10% off your first order with code "),
    ];
  }
}
