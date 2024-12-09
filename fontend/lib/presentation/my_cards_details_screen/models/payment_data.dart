import 'package:flutterbekeryapp/core/app_export.dart';

import 'my_cards_details_model.dart';

class PaymentData{
  static List<MyCardsDetailsModel> getPaymentData(){
    return [
      MyCardsDetailsModel(ImageConstant.imgPaypalPayment,"Paypal","john@gmail.com",true,1,"card"),
      MyCardsDetailsModel(ImageConstant.imgGooglePayment,"Google Pay","",false,2,"card"),
      MyCardsDetailsModel(ImageConstant.imgApplePayment,"Apple Pay","",false,3,"card"),
      MyCardsDetailsModel(ImageConstant.imgVisaPayment,"Visa","",false,4,"card"),
      MyCardsDetailsModel(ImageConstant.imgCODPayment,"Cash on delivery","",true,5,"cod"),
      MyCardsDetailsModel(ImageConstant.imgStripePayment,"Stripe","",true,6,"stripe"),
    ];
  }
}