import 'package:http/http.dart' as http;
import 'dart:convert';
import '../core/constants/constants.dart';
import '../model/product.dart';

class ProductRepository {
  final String apiUrlProduct = api_get_product_list;

  // Hàm fetch danh sách sản phẩm
  Future<List<Product>> fetchProducts(String token) async {
    try {
      final response = await http.get(
        Uri.parse(apiUrlProduct),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token', // Thêm header Authorization với token
        },
      );

      print(response.statusCode);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        List<dynamic> products = data['products']; 
        List<Product> f_products = [];
        print(products);

        final productList = products.map((json) => Product.fromJson(json)).toList();
        return productList;
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to load products');
    }
  }

   Future<List<dynamic>> searchProducts(String query) async {
  final url = Uri.parse('$api_search?query=$query');
  try {
    final response = await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer' + token, // Thay thế YOUR_TOKEN bằng token thực tế của bạn
      },
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load products');
    }
  } catch (e) {
    throw Exception('Error: $e');
  }
}

  // Hàm gửi rating cho sản phẩm
  Future<Map<String, dynamic>> rateProduct(int productId, double rating, String token) async {
    try {
      final response = await http.post(
        Uri.parse('$api_rating/$productId'), // Thêm productId vào URL
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token', // Nếu có token
        },
        body: json.encode({'rating': rating}),
      );

      if (response.statusCode == 200) {
        return json.decode(response.body); // Trả về dữ liệu sau khi submit rating
      } else {
        return {'message': 'Error: ${response.statusCode}'};
      }
    } catch (e) {
      print('Error: $e');
      return {'message': 'Error: $e'};
    }
  }

  // Hàm thêm comment cho sản phẩm
  Future<Map<String, dynamic>> addComment(int productId, String comment, String token) async {
    try {
      final response = await http.post(
        Uri.parse('$api_add_comment'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode({
          'product_id': productId,
          'comment': comment,
        }),
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return {'message': 'Error: ${response.statusCode}'};
      }
    } catch (e) {
      print('Error: $e');
      return {'message': 'Error: $e'};
    }
  }

  // Hàm cập nhật comment cho sản phẩm
  Future<Map<String, dynamic>> updateComment(int commentId, String newComment, String token) async {
    try {
      final response = await http.put(
        Uri.parse('$api_update_comment/$commentId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: json.encode({'comment': newComment}),
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return {'message': 'Error: ${response.statusCode}'};
      }
    } catch (e) {
      print('Error: $e');
      return {'message': 'Error: $e'};
    }
  }

  // Hàm xóa comment cho sản phẩm
  Future<Map<String, dynamic>> deleteComment(int commentId, String token) async {
    try {
      final response = await http.delete(
        Uri.parse('$api_delete_comment/$commentId'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return {'message': 'Error: ${response.statusCode}'};
      }
    } catch (e) {
      print('Error: $e');
      return {'message': 'Error: $e'};
    }
  }
}
