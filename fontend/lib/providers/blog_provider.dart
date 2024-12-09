import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterbekeryapp/repository/blog_repository.dart';
import 'package:flutterbekeryapp/model/blogs.dart';

// Tạo Provider cho BlogRepository
final blogRepositoryProvider = Provider<BlogRepository>((ref) {
  return BlogRepository();
});

// Tạo FutureProvider.family để lấy danh sách blog với token
final blogListProvider = FutureProvider.family<List<Blog>, String>((ref, token) async {
  final repository = ref.watch(blogRepositoryProvider);
  return repository.getBlogs(token);  // Truyền token vào API request
});
