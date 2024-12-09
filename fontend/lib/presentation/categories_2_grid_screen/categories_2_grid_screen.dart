import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutterbekeryapp/model/category.dart';
import 'package:flutterbekeryapp/presentation/cup_cake_screen/cup_cake_screen.dart';
import 'package:flutterbekeryapp/providers/category_provider.dart';
  // Import CupCakeScreen
import 'package:flutterbekeryapp/routes/app_routes.dart';  // Đảm bảo bạn đã import AppRoutes

class Categories2GridScreen extends ConsumerWidget {
  Categories2GridScreen({Key? key}) : super(key: key);

  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  // Hàm lấy token từ secure storage
  Future<String?> getToken() async {
    return await _secureStorage.read(key: 'auth_token');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder<String?>(
      future: getToken(),  // Lấy token từ bộ nhớ
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Categories"),
            ),
            body: const Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Categories"),
            ),
            body: Center(
              child: Text('Error: ${snapshot.error}'),
            ),
          );
        }

        final token = snapshot.data;  // Lấy token từ snapshot

        if (token == null) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Categories"),
            ),
            body: const Center(child: Text("No valid token found")),
          );
        }

        // Sử dụng token để lấy danh sách category
        final categoryListAsync = ref.watch(categoryListProvider(token));

        return Scaffold(
          appBar: AppBar(
            title: const Text("Categories"),
          ),
          body: categoryListAsync.when(
            data: (categories) {
              if (categories.isEmpty) {
                return const Center(child: Text("No categories found."));
              }

              return GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.75,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return _buildCategoryCard(context, category);
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Center(
              child: Text("Error: $error"),
            ),
          ),
        );
      },
    );
  }

  // Hàm xây dựng card cho từng category
  Widget _buildCategoryCard(BuildContext context, Category category) {
    return GestureDetector(
      onTap: () {
        // Điều hướng đến CupCakeScreen khi nhấn vào danh mục
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CupCakeScreen(),  // Điều hướng đến CupCakeScreen
          ),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                child: Image.network(
                  category.photo,  // Hình ảnh danh mục
                  fit: BoxFit.cover,
                  width: double.infinity,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.broken_image, size: 80, color: Colors.grey);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                category.title,  // Tên danh mục
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  // Hàm điều hướng đến màn hình Categories2GridScreen
  void _navigateToCategories2GridScreen(BuildContext context) {
    Navigator.pushNamed(
      context,
      AppRoutes.categories2GridScreen, // Điều hướng đến Categories2GridScreen
    );
  }
}
