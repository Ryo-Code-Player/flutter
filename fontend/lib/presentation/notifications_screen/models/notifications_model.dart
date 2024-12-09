
import 'notifications_item_model.dart';

/// This class defines the variables used in the [notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel {

  static List<NotificationsItemModel> notificationsItemList(){
   return [
    NotificationsItemModel("Special Offer For Students","Show your student ID and get 10% off on all items.","1 h ago"),
    NotificationsItemModel("Birthday Celebration Special","10% Off on Customized Cakes for Your Special Day!","2 h ago"),
    NotificationsItemModel("Weekend Brunch Special","Complimentary Coffee with Every Breakfast Pastry!","3 h ago"),
    NotificationsItemModel("Bulk Order Savings","Receive a Discount on Large Orders for  Events!","4 h ago"),
    NotificationsItemModel("Happy Hour Surprise","Enjoy 20% off on all bakery items from 3 PM to 5 PM","7 h ago"),
    NotificationsItemModel("Baker's Dozen Deal","Buy 12 delicious cookies and get five free","9 h ago"),
    NotificationsItemModel("Baker's Dozen Deal","Buy 12 delicious cookies and get five free","11 h ago"),
   ];
  }
}
