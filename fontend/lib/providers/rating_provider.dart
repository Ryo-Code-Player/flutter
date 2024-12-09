import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import '../repository/rating_repository.dart';
import '../model/rating.dart';
import '../stateNotifier/ratingNotifier.dart';

final ratingRepositoryProvider = Provider<RatingRepository>((ref) {
  return RatingRepository(http.Client());
});

final ratingNotifierProvider = StateNotifierProvider<RatingNotifier, List<Rating>>((ref) {
  final ratingRepository = ref.watch(ratingRepositoryProvider);
  return RatingNotifier(ratingRepository);
});
