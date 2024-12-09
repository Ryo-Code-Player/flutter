import 'package:get/get.dart';import 'chipviewtag_item_model.dart';/// This class defines the variables used in the [filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel {Rx<List<ChipviewtagItemModel>> chipviewtagItemList = Rx(List.generate(5,(index) =>ChipviewtagItemModel()));

 }
