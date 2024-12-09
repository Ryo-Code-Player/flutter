import 'package:flutterbekeryapp/core/app_export.dart';
import 'package:flutterbekeryapp/presentation/blog_screen/models/blog_model.dart';

import '../models/blog_item_model.dart';

/// A controller class for the BlogScreen.
///
/// This class manages the state of the BlogScreen, including the
/// current blogModelObj
class BlogController extends GetxController {
  // Rx<BlogModel> blogModelObj = BlogModel().obs;
 List<BlogItemModel> blogData = BlogModel.getBlogData();
}
