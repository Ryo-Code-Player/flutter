// Sửa lại cart_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterbekeryapp/repository/cart_repository.dart';
import 'package:flutterbekeryapp/model/cartitem.dart';

final cartRepositoryProvider = Provider<CartRepository>((ref) {
  return CartRepository();
});

// Provider để thêm sản phẩm vào giỏ hàng
final addToCartProvider = StateNotifierProvider<AddToCartNotifier, AsyncValue<void>>((ref) {
  final repository = ref.watch(cartRepositoryProvider);
  return AddToCartNotifier(repository);
});

// Provider để lấy danh sách sản phẩm trong giỏ hàng
final cartItemsProvider = FutureProvider.family<List<CartItem>, int>((ref, userId) {
  final repository = ref.watch(cartRepositoryProvider);
  return repository.getCartItems(userId);
});

// StateNotifier cho việc thêm sản phẩm vào giỏ hàng
class AddToCartNotifier extends StateNotifier<AsyncValue<void>> {
  final CartRepository repository;

  AddToCartNotifier(this.repository) : super(const AsyncData(null));

  Future<String> addProductToCart(String productId, {int? userId}) async {
    try {
      state = const AsyncLoading();
      final status = await repository.addToCart(productId: productId, userId: userId);
      state = const AsyncData(null);
      return status;
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      return "500";
    }
  }
}

// Thêm copyWith cho CartItem model
extension CartItemExtension on CartItem {
  CartItem copyWith({
    int? id,
    int? userId,
    int? productId,
    int? quantity,
  }) {
    return CartItem(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      productId: productId ?? this.productId,
      quantity: quantity ?? this.quantity,
    );
  }
}