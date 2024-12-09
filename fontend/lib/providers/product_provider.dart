import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/product.dart';
import '../repository/product_repository.dart';
import '../stateNotifier/product_notifier.dart';

// Provider lấy dữ liệu từ ProductRepository
final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository();
});

// Provider để lấy danh sách sản phẩm với token
final productListProvider = FutureProvider.family<List<Product>, String>((ref, token) async {
  final repository = ref.watch(productRepositoryProvider);
  return repository.fetchProducts(token); // Truyền token vào đây
});

// final productStateProvider = StateNotifierProvider<ProductStateNotifier, List<Product>>((ref) {
//   final repository = ref.watch(productRepositoryProvider);
//   return ProductStateNotifier(repository);
// });