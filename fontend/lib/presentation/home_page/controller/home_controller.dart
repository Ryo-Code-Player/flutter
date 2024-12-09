import 'package:flutter/material.dart';

/// A controller class for the HomePage.
import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/home_page/models/home_model.dart';

import '../models/discount_item_slider_model.dart';
import '../models/slidercar_item_model.dart';

///
/// This class manages the state of the HomePage, including the
/// current homeModelObj
class HomeController extends GetxController {

  TextEditingController searchController = TextEditingController();


  List<SlidercarItemModel> slider = HomeModel.slidercarItemList();
  List<DiscountItemModel> discountItemSlider = HomeModel.getDiscountData();

  void setFavProduct(data) {
    data.isFavourite = !data.isFavourite!;
    update();
  }

}
