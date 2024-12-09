
import '../../../core/utils/image_constant.dart';
import 'productdetails_item_model.dart';

/// This class defines the variables used in the [top_picks_for_you_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopPicksForYouModel {
  // Rx<List<ProductdetailsItemModel>> productdetailsItemList =
  //     Rx(List.generate(6, (index) => ProductdetailsItemModel()));


  static List<ProductdetailsItemModel> getTopPicksForYou(){
    return [
      ProductdetailsItemModel(ImageConstant.imgTopPicks1st,"Royal Chocolate cake","4.3","\$19.00","\$25.00","13%","10",true,true,true),
      ProductdetailsItemModel(ImageConstant.imgTopPicks2nd,"Chocolate cake","4.3","\$21.00","\$25.00","14%","10",false,false,false),
      ProductdetailsItemModel(ImageConstant.imgTopPicks3rd,"Masala Khakhara","4.3","\$24.00","\$25.00","12%","10",false,false,false),
      ProductdetailsItemModel(ImageConstant.imgTopPicks4th,"Strawberry Cup Cake","4.3","\$22.00","\$25.00","13%","10",false,false,true),
      ProductdetailsItemModel(ImageConstant.imgTopPicks1st,"Royal Chocolate cake","4.3","\$19.00","\$25.00","13%","10",false,false,false),
      ProductdetailsItemModel(ImageConstant.imgTopPicks2nd,"Chocolate cake","4.3","\$21.00","\$25.00","14%","10",false,false,false),
    ];
  }

}
