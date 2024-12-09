import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/my_cards_details_screen/models/my_cards_details_model.dart';

import '../models/payment_data.dart';

/// A controller class for the MyCardsDetailsScreen.
///
/// This class manages the state of the MyCardsDetailsScreen, including the
/// current myCardsDetailsModelObj
class MyCardsDetailsController extends GetxController {
  // Rx<MyCardsDetailsModel> myCardsDetailsModelObj = MyCardsDetailsModel().obs;
  List<MyCardsDetailsModel> myCardsDetailsModelObj = PaymentData.getPaymentData();
}
