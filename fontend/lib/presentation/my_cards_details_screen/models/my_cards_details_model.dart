/// This class defines the variables used in the [my_cards_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCardsDetailsModel {

  String? icon;
  String? title;
  String? subtitle;
  String? type;
  bool? isActive;
  int? id;
  MyCardsDetailsModel(this.icon,this.title,this.subtitle,this.isActive,this.id,this.type);
}
