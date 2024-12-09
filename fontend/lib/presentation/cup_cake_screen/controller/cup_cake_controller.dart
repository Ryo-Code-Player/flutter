import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/cup_cake_screen/models/cup_cake_model.dart';

import '../models/productdetails2_item_model.dart';

/// A controller class for the CupCakeScreen.
///
/// This class manages the state of the CupCakeScreen, including the
/// current cupCakeModelObj
class CupCakeController extends GetxController {
 List<CupCakeItemModel> cupCakeData = CupCakeModel.getCupCakeData();

 void setFavProduct(CupCakeItemModel model) {
  model.isFavourite = !model.isFavourite!;
  update();
 }
}
