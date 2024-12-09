
/// This class is used in the [our_speciality_item_widget] screen.

class OurSpecialityItemModel {
 String? image;
 String? title;
 String? rate;
 String? sellprice;
 String? regulerPrice;
 String? discount;
 String? noOfReview;
 bool? isFavourite;
 bool? isFeatured;
 bool? isOnSale;

 OurSpecialityItemModel(
     this.image,
     this.title,
     this.rate,
     this.sellprice,
     this.regulerPrice,
     this.discount,
     this.noOfReview,
     this.isFavourite,
     this.isFeatured,
     this.isOnSale);
}
