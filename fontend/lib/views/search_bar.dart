import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../core/constants/constants.dart'; // Import constants để sử dụng token
import '../model/product.dart';

// Hàm tìm kiếm sản phẩm
Future<List<Product>> fetchProducts(String query) async {
  final String apiSearch = api_search; // URL API tìm kiếm

  // Lấy token từ constants.dart (sử dụng biến global 'token')
  final response = await http.get(
    Uri.parse('$apiSearch?query=$query'),
    headers: {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token', // Thêm "Bearer " vào token khi gửi trong header
    },
  );

  print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

  if (response.statusCode == 200) {
    var data = json.decode(response.body);
    if (data['success'] == true) {
      // Giả sử dữ liệu trả về là danh sách sản phẩm
      List<Product> products = [];
      for (var productData in data['products']) {
        products.add(Product.fromJson(productData)); // Chuyển JSON thành Product
      }
      return products;
    } else {      print('Error: ${data['message']}');
    print('HTTP Error: ${response.statusCode}');
      print('HTTP Response Body: ${response.body}');
      return [];
    }
  } else {
    print('Failed to load: ${response.statusCode}');
    return [];
  }
}

// Hàm xử lý tìm kiếm và cập nhật kết quả
void performSearch(String query, Function(List<Product>) updateResults) async {
  if (query.isNotEmpty) {
    try {
      final results = await fetchProducts(query);
      updateResults(results); // Cập nhật kết quả tìm kiếm
    } catch (e) {
      print("Error fetching search results: $e");
      updateResults([]); // Cập nhật kết quả khi có lỗi
    }
  } else {
    updateResults([]); // Nếu không có query, trả về danh sách rỗng
  }
}
