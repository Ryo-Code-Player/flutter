import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/cakes_screen/models/cakes_model.dart';

import '../models/productdetails1_item_model.dart';

/// A controller class for the CakesScreen.
///
/// This class manages the state of the CakesScreen, including the
/// current cakesModelObj
class CakesController extends GetxController {
 List<CakesItemModel> cakeData = CakesModel.cakesItemList();

 void setFavProduct(CakesItemModel model) {
  model.isFavourite = !model.isFavourite!;
  update();
 }
}
