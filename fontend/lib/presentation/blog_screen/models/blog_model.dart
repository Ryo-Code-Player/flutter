
import '../../../core/utils/image_constant.dart';
import 'blog_item_model.dart';

/// This class defines the variables used in the [blog_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BlogModel {
  // Rx<List<BlogItemModel>> blogItemList =
  //     Rx(List.generate(5, (index) => BlogItemModel()));
 static List<BlogItemModel> getBlogData(){
  return [
   BlogItemModel(ImageConstant.imgBlog1st,"Journey Through Baking","exploring different baking traditions and flavors from around the world.","13 Sep, 2022","10 Min Read"),
   BlogItemModel(ImageConstant.imgBlog2nd,"Delight Your Guests","creative decorating ideas to add that extra festive touch.","13 Sep, 2022","15 Min Read"),
   BlogItemModel(ImageConstant.imgBlog3rd,"Journey Through Baking","exploring different baking traditions and flavors from around the world.","13 Sep, 2022","10 Min Read"),
  ];
 }
}
