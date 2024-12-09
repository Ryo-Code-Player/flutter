import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/category_repository.dart';
import '../model/category.dart';

// Provider lấy dữ liệu từ CategoryRepository
final categoryRepositoryProvider = Provider<CategoryRepository>((ref) {
  return CategoryRepository();
});

// Provider để lấy danh sách category với token
final categoryListProvider = FutureProvider.family<List<Category>, String>((ref, token) async {
  final repository = ref.watch(categoryRepositoryProvider);
  return repository.getAllCategories(token);  // Truyền token vào API request
});
