import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/data/apiClient/api_client.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart'; 
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../stateNotifier/authstatenotifier.dart';
import '../core/constants/constants.dart';

class LoginScreen extends ConsumerStatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FlutterSecureStorage _storage = FlutterSecureStorage();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            _isLoading
                ? CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: _login,
                    child: Text('Login'),
                  ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                Get.toNamed('/register');
              },
              child: Text('Don\'t have an account? Register here!'),
            ),
          ],
        ),
      ),
    );
  }

  // Hàm xử lý đăng nhập qua API
  Future<void> _login() async {
    final String email = _emailController.text;
    final String password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Please enter email and password');
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      final response = await http.post(
        Uri.parse(api_login),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);

        // Kiểm tra và xử lý nếu token là map
        if (responseBody is Map && responseBody.containsKey('token')) {
          final String token = responseBody['token'].toString();


          if (responseBody['user'] != null) {
            final int userid = responseBody['user']['id'] ?? 'Unknown';
            final String name = responseBody['user']['full_name'] ?? 'Unknown';
            final String email = responseBody['user']['email'] ?? 'Unknown';
            await _storage.write(key: 'user_name', value: name);
            await _storage.write(key: 'user_email', value: email);
            await _storage.write(key: 'user_id', value: userid.toString());
            print(await _storage.read(key: 'user_id'));
            print(await _storage.read(key: 'user_name'));
            print(await _storage.read(key: 'user_email'));
          }

          // Lưu token vào Flutter Secure Storage
          await _storage.write(key: 'auth_token', value: token);
          print('Token saved: $token');

          _showSuccessDialog();
        } else {
          Get.snackbar('Error', 'Invalid response format');
        }
      } else {
        Get.snackbar('Error', 'Invalid email or password');
      }
    } catch (error) {
      Get.snackbar('Error', 'Failed to login: $error');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  // Hàm hiển thị thông báo thành công
  Future<void> _showSuccessDialog() async {
    await Get.defaultDialog(
      title: 'Login Successful',
      content: Text('Bạn vừa đăng nhập thành công.'),
      confirm: ElevatedButton(
        onPressed: () {
          Get.back(); // Đóng dialog
          Get.offAllNamed('/home'); // Điều hướng về trang home
        },
        child: Text('OK'),
      ),
    );
  }
}
