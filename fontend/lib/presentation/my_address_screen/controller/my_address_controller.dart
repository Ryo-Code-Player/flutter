import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/my_address_screen/models/my_address_model.dart';

import '../models/my_address_item_model.dart';

/// A controller class for the MyAddressScreen.
///
/// This class manages the state of the MyAddressScreen, including the
/// current myAddressModelObj
class MyAddressController extends GetxController {


  List<MyAddressItemModel> getAddress = MyAddressModel.getAddressData();

}
