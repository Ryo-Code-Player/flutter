import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/comment.dart';
import '../core/constants/constants.dart';

class CommentRepository {
  final String baseUrl = base;  // URL của API

  // Lấy tất cả bình luận cho sản phẩm
  Future<List<Comment>> fetchCommentsByProduct(int productId) async {
    final response = await http.get(Uri.parse('$baseUrl/comments/product/$productId'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)["data"];  // Truy cập vào key "data"
      return data.map((comment) => Comment.fromJson(comment)).toList();
    } else {
      throw Exception('Failed to load comments');
    }
  }

  // Thêm bình luận mới vào cơ sở dữ liệu
  Future<void> addComment(Comment comment) async {
    final response = await http.post(
      Uri.parse('$baseUrl/comments'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(comment.toJson()),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to add comment');
    }
  }
}