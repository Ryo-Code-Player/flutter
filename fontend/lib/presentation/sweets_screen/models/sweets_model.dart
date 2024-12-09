
import '../../../core/utils/image_constant.dart';
import 'productdetails3_item_model.dart';

/// This class defines the variables used in the [sweets_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SweetsModel {
 static List<SweetsItemModel> sweetsItemList(){
  return [
   SweetsItemModel(ImageConstant.imgSweets1st,"Motichoor laddu","4.3","\$19.00","\$25.00","13%","10",true,true,true),
   SweetsItemModel(ImageConstant.imgSweets2nd,"Kaju katli","4.3","\$21.00","\$25.00","14%","10",false,false,false),
   SweetsItemModel(ImageConstant.imgSweets3rd,"Rasgulla","4.3","\$24.00","\$25.00","12%","10",false,false,false),
   SweetsItemModel(ImageConstant.imgSweets4th,"Kesar pedha","4.3","\$22.00","\$25.00","13%","10",false,false,true),
   SweetsItemModel(ImageConstant.imgSweets5th,"Strawberry cake","4.3","\$19.00","\$25.00","13%","10",false,false,false),
   SweetsItemModel(ImageConstant.imgSweets6th,"Chocolate cake","4.3","\$21.00","\$25.00","14%","10",false,false,false),
  ];
 }

}
