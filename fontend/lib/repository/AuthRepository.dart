import 'package:flutter_secure_storage/flutter_secure_storage.dart'; 
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/user.dart';
import '../core/constants/constants.dart';

class AuthRepository {
  final String apiUrlRegister = api_register;
  final String apiUrlLogin = api_login;
  final _storage = const FlutterSecureStorage();

  Future<void> register(User user) async {
  try {
    final response = await http.post(
      Uri.parse(apiUrlRegister),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user.toJson()),
    );

    if (response.statusCode == 200) {
      print('Đăng ký thành công');
    } else {
      // Trường hợp response không phải 200
      final responseBody = jsonDecode(response.body);
      throw Exception('Đăng ký thất bại: ${responseBody['message'] ?? 'Unknown error'}');
    }
  } catch (e) {
    print('Lỗi đăng ký: $e');
    throw Exception("Failed to register: $e");
  }
}

  Future<String?> login(String email, String password) async {
    final response = await http.post(
      Uri.parse(apiUrlLogin),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      final token = responseBody['token'];
      await _storage.write(key: 'auth_token', value: token);
      return token;
    } else {
      throw Exception("Failed to login");
    }
  }

  Future<void> logout() async {
    await _storage.delete(key: 'auth_token');
  }

  Future<String?> getToken() async {
    return await _storage.read(key: 'auth_token');
  }
}