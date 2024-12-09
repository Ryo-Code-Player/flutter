// lib/screens/register_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/user.dart';
import '../../stateNotifier/authstatenotifier.dart';

class RegisterPage extends ConsumerWidget {
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(authStateNotifierProvider).isLoading;

    return Scaffold(
      appBar: AppBar(title: const Text("Đăng Ký")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _fullnameController,
                decoration: const InputDecoration(labelText: "Họ và tên"),
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: "Email"),
              ),
              TextField(
                controller: _phoneController,
                decoration: const InputDecoration(labelText: "Số điện thoại"),
              ),
              TextField(
                controller: _addressController,
                decoration: const InputDecoration(labelText: "Địa chỉ"),
              ),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Mật khẩu"),
              ),
              const SizedBox(height: 20),
              isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () async {
                        final user = User(
                          full_name: _fullnameController.text,
                          email: _emailController.text,
                          phone: _phoneController.text,
                          address: _addressController.text,
                          password: _passwordController.text,
                        );

                        final isRegistered = await ref
                            .read(authStateNotifierProvider.notifier)
                            .registerUser(user);

                        if (isRegistered) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Đăng ký thành công")),
                          );
                          Navigator.pushReplacementNamed(context, '/login');
                        } else {
                          // Hiển thị lỗi chi tiết từ `authStateNotifierProvider`
                          final errorMessage = ref.read(authStateNotifierProvider).errorMessage;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(errorMessage ?? "Đăng ký thất bại")),
                          );
                        }
                      },
                      child: const Text("Đăng ký"),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
