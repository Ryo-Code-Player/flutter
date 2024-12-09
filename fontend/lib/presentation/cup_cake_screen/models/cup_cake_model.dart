
import '../../../core/utils/image_constant.dart';
import 'productdetails2_item_model.dart';

/// This class defines the variables used in the [cup_cake_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CupCakeModel {
  // Rx<List<Productdetails2ItemModel>> productdetails2ItemList =
  //     Rx(List.generate(6, (index) => Productdetails2ItemModel()));

  static List<CupCakeItemModel> getCupCakeData(){
    return [
      CupCakeItemModel(ImageConstant.imgCupCake1st,"Red Velvet Cup Cake","4.3","\$19.00","\$25.00","13%","10",true,true,true),
      CupCakeItemModel(ImageConstant.imgCupCake2nd,"Chocolate Cup cake","4.3","\$21.00","\$25.00","14%","10",false,false,false),
      CupCakeItemModel(ImageConstant.imgCupCake3rd,"Rainbow cup cake","4.3","\$24.00","\$25.00","12%","10",false,false,false),
      CupCakeItemModel(ImageConstant.imgCupCake4th,"Mango cup cake","4.3","\$22.00","\$25.00","13%","10",false,false,true),
      CupCakeItemModel(ImageConstant.imgCupCake5th,"Royal Chocolate cake","4.3","\$19.00","\$25.00","13%","10",false,false,false),
      CupCakeItemModel(ImageConstant.imgCupCake6th,"Chocolate cake","4.3","\$21.00","\$25.00","14%","10",false,false,false),
    ];
  }
}
