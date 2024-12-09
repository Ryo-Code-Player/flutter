import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/sweets_screen/models/sweets_model.dart';

import '../models/productdetails3_item_model.dart';

/// A controller class for the SweetsScreen.
///
/// This class manages the state of the SweetsScreen, including the
/// current sweetsModelObj
class SweetsController extends GetxController {
 List<SweetsItemModel> sweetData = SweetsModel.sweetsItemList();

 void setFavProduct(SweetsItemModel model) {
  model.isFavourite = !model.isFavourite!;
  update();
 }
}
