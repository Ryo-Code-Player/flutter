// stateNotifier/comment_notifier.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/comment.dart';
import '../repository/comment_repository.dart';

class CommentNotifier extends StateNotifier<List<Comment>> {
  final CommentRepository _commentRepository;

  CommentNotifier(this._commentRepository) : super([]);

  // Lấy tất cả bình luận cho sản phẩm
  Future<void> fetchCommentsByProduct(int productId) async {
    try {
      final comments = await _commentRepository.fetchCommentsByProduct(productId);
      state = comments; // Cập nhật state với danh sách bình luận mới
    } catch (e) {
      print("Error fetching comments: $e");
    }
  }

  // Thêm bình luận mới vào danh sách và cơ sở dữ liệu
  Future<void> addComment(Comment comment) async {
    try {
      // Thêm bình luận vào cơ sở dữ liệu
      await _commentRepository.addComment(comment);
      // Cập nhật trạng thái của state với bình luận mới
      state = [...state, comment];
    } catch (e) {
      print('Error adding comment: $e');
    }
  }
}