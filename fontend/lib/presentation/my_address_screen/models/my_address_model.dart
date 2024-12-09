
import 'my_address_item_model.dart';

/// This class defines the variables used in the [my_address_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyAddressModel {
  // Rx<List<MyAddressItemModel>> myAddressItemList =
  //     Rx(List.generate(4, (index) => MyAddressItemModel()));


  static List<MyAddressItemModel> getAddressData(){
    return [
      MyAddressItemModel("Darlene Robertson","Home","4140 Parker Rd.","Allentown","New Mexico","US","31134","(316) 555-0116"),
      MyAddressItemModel("Darlene Robertson","Office","2464 Royal Ln.","Mesa","New Jersey","US","45463","(505) 555-0125"),
      MyAddressItemModel("Darlene Robertson","Home-2","2715 Ash Dr. San Jose","Mesa","New Jersey","US","83475","(629) 555-0129"),
      MyAddressItemModel("Darlene Robertson","Office-2","4517 Washington Ave.","Manchester","Kentucky","US","39495","(225) 555-0118"),
    ];
  }
}
