import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutterbekeryapp/model/blogs.dart';
import '../core/constants/constants.dart';

class BlogRepository {
  final String apiUrlBlog = api_blogs;

  // Fetch danh sách bài viết từ API
 Future<List<Blog>> getBlogs(String token) async {
  try {
    final response = await http.get(
      Uri.parse(apiUrlBlog),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    print('Response Status: ${response.statusCode}');
    print('Full Response Body: ${response.body}');

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      
      // Kiểm tra và xử lý dữ liệu
      if (data == null) {
        print('Received null data');
        return [];
      }

      // Kiểm tra cấu trúc JSON
      List<dynamic> blogsJson;
      if (data['success'] == true && data['blogs'] is List) {
        blogsJson = data['blogs'];
      } else if (data is List) {
        blogsJson = data;
      } else {
        print('Invalid data format: ${data.runtimeType}');
        return [];
      }

      // Lọc và chuyển đổi blogs
      return blogsJson
          .where((json) => json != null)
          .map((json) {
            try {
              return Blog.fromJson(json);
            } catch (e) {
              print('Error parsing blog: $e');
              return null;
            }
          })
          .whereType<Blog>() // Loại bỏ các giá trị null
          .toList();
    } else {
      print('API Error: ${response.statusCode}');
      return [];
    }
    } catch (e) {
      print('Catch Error in getBlogs: $e');
      return [];
    }
  }
}
