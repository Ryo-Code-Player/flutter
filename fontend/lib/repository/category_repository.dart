import 'package:http/http.dart' as http;
import 'dart:convert';
import '../core/constants/constants.dart';
import '../model/category.dart';

class CategoryRepository {
  final String apiUrlCat = api_get_cat;

  Future<List<Category>> getAllCategories(String token) async {
    try {
      final response = await http.get(
        Uri.parse(apiUrlCat),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',  // Thêm header Authorization với token
        },
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        List<dynamic> categories = data['cats'];
        return categories.map((json) => Category.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load categories');
      }
    } catch (e) {
      throw Exception('Failed to load categories');
    }
  }
}
