

import '../../../core/utils/image_constant.dart';
import 'productdetails1_item_model.dart';

/// This class defines the variables used in the [cakes_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CakesModel {
  static List<CakesItemModel> cakesItemList(){
    return [
      CakesItemModel(ImageConstant.imgcake1st,"Royal Chocolate cake","4.3","\$19.00","\$25.00","13%","10",true,true,true),
      CakesItemModel(ImageConstant.imgcake2nd,"Chocolate cake","4.3","\$21.00","\$25.00","14%","10",false,false,false),
      CakesItemModel(ImageConstant.imgcake3rd,"Khatta mitha mix","4.3","\$24.00","\$25.00","12%","10",false,false,false),
      CakesItemModel(ImageConstant.imgcake4th,"Mango cup cake","4.3","\$22.00","\$25.00","13%","10",false,false,true),
      CakesItemModel(ImageConstant.imgcake1st,"Royal Chocolate cake","4.3","\$19.00","\$25.00","13%","10",false,false,false),
      CakesItemModel(ImageConstant.imgcake1st,"Chocolate cake","4.3","\$21.00","\$25.00","14%","10",false,false,false),
    ];
  }
}
