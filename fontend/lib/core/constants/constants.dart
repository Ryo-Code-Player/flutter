import 'package:flutterbekeryapp/model/site_setting.dart';

final String base = 'http://127.0.0.1:8000/api/v1';
final String api_login = base + "/login";
final String api_register = base + "/register";
final String api_get_product_list = base + "/getproductlist";
final String api_sitesetting = base + "/getsitesetting";
final String api_search = base + "/products/search";
final String api_get_cat = base + "/getallcat";
final String api_profile = base + "/profile";
final String api_updateprofile = base +"/updateprofile";

final String api_rating = base + "/ratings";
final String api_product_ratings = base + "/ratings/product";

final String api_add_comment = base + "/comments"; // Thêm comment
final String api_update_comment = base + "/comments/"; // Cập nhật comment (thêm id sau URL)
final String api_delete_comment = base + "/comments/"; // Xóa comment (thêm id sau URL)
final String api_blogs = base + "/blogs"; // Xóa comment (thêm id sau URL)
final String api_add_to_cart = base + "/cart";
final String api_get_cart = base + "/cart/{userId}";
String token = '';

var g_sitesetting = 
    SiteSetting(id: 0, company_name: 'company_name', logo: 'logo');
    
var app_type = "app";
