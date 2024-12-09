import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/rating.dart';
import '../core/constants/constants.dart'; // Định nghĩa các API endpoint

class RatingRepository {
  final http.Client client;

  RatingRepository(this.client);

  Future<List<Rating>> getRatingsByProduct(int productId) async {
    final response = await client.get(Uri.parse('$api_product_ratings/$productId'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((item) => Rating.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load ratings');
    }
  }

  Future<void> addRating(Rating rating) async {
    try {
      // In ra thông tin để kiểm tra dữ liệu trước khi gửi
      print('Request body: ${json.encode({
        'userId': rating.userId,
        'productId': rating.productId,
        'rating': rating.rating,
        'review': rating.review,
      })}');

      final response = await client.post(
        Uri.parse(api_rating),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token', // Thêm token nếu cần
        },
        body: json.encode({
          'user_id': rating.userId,
          'product_id': rating.productId,
          'rating': rating.rating,
          'review': rating.review,
        }),
      );

      // In ra mã trạng thái và phản hồi từ server để debug
      print('Response status code: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 201) {
        print('Rating added successfully.');
      } else {
        // Ghi log chi tiết nếu không phải mã 201
        throw Exception('Failed to add rating. Status code: ${response.statusCode}, Body: ${response.body}');
      }
    } catch (e) {
      // In chi tiết lỗi ra để dễ dàng kiểm tra
      print('Error in addRating: $e');
      throw Exception('Failed to add rating: $e');
    }
  }
}
