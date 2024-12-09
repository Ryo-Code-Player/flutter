import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutterbekeryapp/model/product.dart';
import 'package:flutterbekeryapp/providers/product_provider.dart';
import 'package:flutterbekeryapp/views/product_detail.dart';


class CupCakeScreen extends ConsumerWidget {
  CupCakeScreen({Key? key}) : super(key: key);

  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  Future<String?> getToken() async {
    return await _secureStorage.read(key: 'auth_token');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder<String?>(
      future: getToken(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Cup Cake"),
            ),
            body: const Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Cup Cake"),
            ),
            body: Center(
              child: Text('Error: ${snapshot.error}'),
            ),
          );
        }

        final token = snapshot.data;

        if (token == null) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Cup Cake"),
            ),
            body: const Center(child: Text("No valid token found")),
          );
        }

        final productListAsync = ref.watch(productListProvider(token));

        return Scaffold(
          appBar: AppBar(
            title: const Text("Cup Cake"),
          ),
          body: productListAsync.when(
            data: (products) {
              if (products.isEmpty) {
                return const Center(child: Text("No products found."));
              }

              return GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return _buildProductCard(context, product, ValueKey(product.id));
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

  Widget _buildProductCard(BuildContext context, Product product, Key key) {
    final photos = product.photo.split(',');

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          ),
        );
      },
      child: Card(
        key: key,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.network(
                photos[0],
                fit: BoxFit.cover,
                width: double.infinity,
                height: 180,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.broken_image, size: 80, color: Colors.grey);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "\$${product.price.toStringAsFixed(2)}",
                style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
