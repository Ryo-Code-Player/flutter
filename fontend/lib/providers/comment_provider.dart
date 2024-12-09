// providers.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/comment_repository.dart';
import '../stateNotifier/CommentNotifier.dart';
import '../model/comment.dart';

// Provider cho CommentRepository
final commentRepositoryProvider = Provider<CommentRepository>((ref) {
  return CommentRepository();
});

// Provider cho CommentNotifier
final commentNotifierProvider = StateNotifierProvider<CommentNotifier, List<Comment>>((ref) {
  final repository = ref.watch(commentRepositoryProvider); // Lấy repository từ provider
  return CommentNotifier(repository); // Truyền repository vào constructor của CommentNotifier
});
