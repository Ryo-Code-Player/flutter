import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/payment_screen/models/payment_model.dart';

import '../../my_cards_details_screen/models/my_cards_details_model.dart';
import '../../my_cards_details_screen/models/payment_data.dart';

/// A controller class for the PaymentScreen.
///
/// This class manages the state of the PaymentScreen, including the
/// current paymentModelObj
class PaymentController extends GetxController {
  Rx<PaymentModel> paymentModelObj = PaymentModel().obs;

  Rx<bool> flatRate = false.obs;

  Rx<bool> freevalue = false.obs;

  Rx<bool> localPickup = false.obs;
  List<MyCardsDetailsModel> myCardsDetailsModelObj = PaymentData.getPaymentData();
int currentPaymentId = 1;
  void setCurrentPayment(int? id) {
    currentPaymentId = id!;
    update();
  }
}
