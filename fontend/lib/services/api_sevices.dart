import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/comment.dart';
import '../core/constants/constants.dart';

class ApiService {
  static String baseUrl = base ;  // Thay bằng URL thật của API

  // Lấy tất cả bình luận của sản phẩm
  Future<List<Comment>> getCommentsByProduct(int productId) async {
    final response = await http.get(
      Uri.parse('$baseUrl/comments/product/$productId'),
      headers: {
        'Authorization': 'Bearer your_token_here',  // Đảm bảo thêm token người dùng
      },
    );

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((comment) => Comment.fromJson(comment)).toList();
    } else {
      throw Exception('Failed to load comments');
    }
  }

  // Thêm bình luận mới
  Future<void> addComment(Comment comment) async {
    final response = await http.post(
      Uri.parse('$baseUrl/comments'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer your_token_here',  // Đảm bảo thêm token người dùng
      },
      body: json.encode(comment.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to add comment');
    }
  }
}
