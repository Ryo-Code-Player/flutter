// Sửa lại cart_repository.dart
import 'dart:convert';
import 'package:flutterbekeryapp/core/constants/constants.dart';
import 'package:flutterbekeryapp/model/product.dart';
import 'package:flutterbekeryapp/model/cartitem.dart';
import 'package:http/http.dart' as http;

class CartRepository {
  // Thêm sản phẩm vào giỏ hàng
  Future<String> addToCart({required String productId, int? userId}) async {
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    try {
      final response = await http.post(
        Uri.parse(api_add_to_cart),
        headers: headers,
        body: jsonEncode({
          'product_id': productId,
          'user_id': userId, // Thêm user_id nếu cần
        }),
      );

      switch (response.statusCode) {
        case 200:
          return '200';
        case 400:
          return '400';
        default:
          return '500';
      }
    } catch (e) {
      print('Exception occurred in addToCart: $e');
      throw Exception('Network error: $e');
    }
  }

  // Lấy danh sách CartItem thay vì Product
  Future<List<CartItem>> getCartItems(int userId) async {
    final response = await http.get(Uri.parse('$api_get_cart/$userId'));
    
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((data) => CartItem.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load cart items: ${response.body}');
    }
  }
}

