import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/cart_provider.dart';
import '../model/cartitem.dart';
import '../model/product.dart';

class MyCartScreen extends ConsumerWidget {
  final int userId;

  const MyCartScreen({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Sử dụng cartItemsProvider đã được định nghĩa trước đó
    final cartState = ref.watch(cartItemsProvider(userId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Giỏ Hàng'),
        centerTitle: true,
      ),
      body: cartState.when(
        data: (cartItems) {
          if (cartItems.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined, 
                    size: 100, 
                    color: Colors.grey[400]
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Giỏ hàng của bạn đang trống',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            );
          }
          return ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              final cartItem = cartItems[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                elevation: 2,
                child: ListTile(
                  leading: cartItem.productId != null
                      ? Image.network(
                          // Giả sử bạn có một phương thức để lấy ảnh sản phẩm từ productId
                          'URL_TO_PRODUCT_IMAGE/${cartItem.productId}',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 60,
                              height: 60,
                              color: Colors.grey[200],
                              child: const Icon(Icons.image_not_supported),
                            );
                          },
                        )
                      : Container(
                          width: 60,
                          height: 60,
                          color: Colors.grey[200],
                          child: const Icon(Icons.shopping_bag),
                        ),
                  title: Text(
                    'Mã sản phẩm: ${cartItem.productId ?? "Không xác định"}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Số lượng: ${cartItem.quantity ?? 0}'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Mã người dùng: ${cartItem.userId ?? "Không xác định"}'),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              // TODO: Implement remove from cart functionality
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Chức năng xóa đang được phát triển')),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stackTrace) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline, 
                color: Colors.red, 
                size: 100
              ),
              const SizedBox(height: 20),
              Text(
                'Đã có lỗi xảy ra: $error',
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  // Refresh the cart items
                  ref.invalidate(cartItemsProvider(userId));
                },
                child: const Text('Thử lại'),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: cartState.hasValue && cartState.value!.isNotEmpty
          ? BottomAppBar(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Implement checkout functionality
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Chức năng thanh toán đang được phát triển')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Tiến Hành Thanh Toán',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          : null,
    );
  }
}