import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/rating.dart';
import '../repository/rating_repository.dart';

class RatingNotifier extends StateNotifier<List<Rating>> {
  final RatingRepository _ratingRepository;

  RatingNotifier(this._ratingRepository) : super([]);

  Future<void> fetchRatingsByProduct(int productId) async {
    try {
      // Lấy dữ liệu từ API
      state = await _ratingRepository.getRatingsByProduct(productId);
    } catch (e) {
      throw Exception('Failed to load ratings: $e');
    }
  } 

  Future<void> addRating(Rating newRating) async {
    try {
      await _ratingRepository.addRating(newRating);
      state = [...state, newRating]; // Thêm đánh giá mới vào danh sách
    } catch (e) {
      throw Exception('Failed to add rating: $e');
    }
  }
}
