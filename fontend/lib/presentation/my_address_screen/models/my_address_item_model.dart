import 'package:get/get.dart';/// This class is used in the [my_address_item_widget] screen.
class MyAddressItemModel {Rx<String> homeTxt = Rx("Home");

Rx<String> k4140parkerrdTxt = Rx("4140 Parker Rd. Allentown, New Mexico 31134");

Rx<String> k3165550116Txt = Rx("(316) 555-0116");

Rx<String>? id = Rx("");

String? name;
String? addressCategory;
String? address;
String? city;
String? state;
String? country;
String? pincode;
String? phoneNumber;
MyAddressItemModel(this.name,this.addressCategory,this.address,this.city,this.state,this.country,this.pincode,this.phoneNumber);
 }
