import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/top_picks_for_you_screen/models/top_picks_for_you_model.dart';

import '../models/productdetails_item_model.dart';

/// A controller class for the TopPicksForYouScreen.
///
/// This class manages the state of the TopPicksForYouScreen, including the
/// current topPicksForYouModelObj
class TopPicksForYouController extends GetxController {
  // Rx<TopPicksForYouModel> topPicksForYouModelObj = TopPicksForYouModel().obs;

  List<ProductdetailsItemModel> topPicksList = TopPicksForYouModel.getTopPicksForYou();

  void setFavProduct(data) {
    data.isFavourite = !data.isFavourite!;
    update();

  }

}
