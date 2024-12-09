// Đã chỉnh sửa ProductDetailScreen để gửi rating khi ấn vào sao và lấy điểm trung bình
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../model/product.dart';
import '../model/comment.dart';
import '../model/rating.dart';
import '../providers/providers.dart';
import '../providers/rating_provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductDetailScreen extends ConsumerStatefulWidget {
  final Product product;

  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends ConsumerState<ProductDetailScreen> {
  final TextEditingController _commentController = TextEditingController();
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  double _rating = 0.0; // Lưu điểm đánh giá

  int? _userId;
  String? _userName;
  String? _userEmail;

  @override
  void initState() {
    super.initState();
    _loadUserInfo();
    ref.read(commentNotifierProvider.notifier).fetchCommentsByProduct(widget.product.id);
    _fetchAverageRating();
  }

  Future<void> _loadUserInfo() async {
    final String? userIdString = await _secureStorage.read(key: 'user_id');
    _userId = userIdString != null ? int.tryParse(userIdString) : null;
    _userName = await _secureStorage.read(key: 'user_name');
    _userEmail = await _secureStorage.read(key: 'user_email');
    setState(() {});
  }

  void _updateRating(double rating) {
    setState(() {
      _rating = rating;
    });
  }

  Future<void> _submitRating() async {
    if (_userId == null || _userName == null || _userEmail == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Vui lòng đăng nhập để đánh giá.')),
      );
      return;
    }

    try {
      print('User ID: $_userId');
      print('Product ID: ${widget.product.id}');
      print('Rating: $_rating');
      final rating = Rating(
        id: 0,
        userId: _userId!,
        productId: widget.product.id,
        rating: _rating,
        review: 'Đánh giá của bạn',
        createdAt: DateTime.now().toIso8601String(),
        updatedAt: DateTime.now().toIso8601String(),
      );
      await ref.read(ratingNotifierProvider.notifier).addRating(rating);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Đánh giá đã được gửi thành công.')),
      );
      _fetchAverageRating();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Không thể gửi đánh giá.')),
      );
    }
  }

  Future<void> _fetchAverageRating() async {
    try {
      await ref.read(ratingNotifierProvider.notifier).fetchRatingsByProduct(widget.product.id);
    } catch (e) {
      // Xử lý lỗi nếu cần
    }
  }

  @override
  Widget build(BuildContext context) {
    final photos = widget.product.photo.split(',');
    final comments = ref.watch(commentNotifierProvider);
    final ratings = ref.watch(ratingNotifierProvider);

    double averageRating = 0.0;
    if (ratings.isNotEmpty) {
    // Chỉ lấy các rating của sản phẩm hiện tại
    final productRatings = ratings.where((rating) => rating.productId == widget.product.id).toList();
  
    if (productRatings.isNotEmpty) {
      averageRating = productRatings.map((rating) => rating.rating).reduce((a, b) => a + b) / productRatings.length;
    }
  }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                photos[0],
                height: 200,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.broken_image, size: 100, color: Colors.grey);
                },
              ),
            ),
            const SizedBox(height: 16),
            Text(
              widget.product.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Giá: \$${widget.product.price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 16),
            Text(
              'Product ID: ${widget.product.id}',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            const Text(
              'Description:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            // Phần đánh giá sao
            const Text(
              'Đánh giá sản phẩm:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              widget.product.description,
              style: TextStyle(fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    index < _rating ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                    size: 30,
                  ),
                  onPressed: () {
                    _updateRating(index + 1.0);
                  },
                );
              }),
            ),
            ElevatedButton(
              onPressed: _submitRating,
              child: const Text('Gửi đánh giá'),
            ),
            const SizedBox(height: 8),
            Text(
              'Điểm trung bình: ${averageRating.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Phần bình luận
            const Text(
              'Bình luận:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            comments.isEmpty
                ? const Center(child: Text('Chưa có bình luận nào.'))
                : ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: comments.length,
                    itemBuilder: (context, index) {
                      final comment = comments[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: ListTile(
                          title: Text(comment.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(comment.content),
                        ),
                      );
                    },
                  ),
            const SizedBox(height: 16),

            // Phần nhập bình luận
            TextField(
              controller: _commentController,
              decoration: const InputDecoration(
                labelText: 'Thêm bình luận...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () async {
                if (_userId == null || _userName == null || _userEmail == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Vui lòng đăng nhập để thêm bình luận.')),
                  );
                  return;
                }

                if (_commentController.text.isNotEmpty) {
                  final comment = Comment(
                    id: 0,
                    userId: _userId!,
                    name: _userName!,
                    email: _userEmail!,
                    content: _commentController.text,
                    status: 'active',
                    productId: widget.product.id,
                    createdAt: DateTime.now().toIso8601String(),
                    updatedAt: DateTime.now().toIso8601String(),
                  );

                  await ref.read(commentNotifierProvider.notifier).addComment(comment);
                  await ref.read(commentNotifierProvider.notifier).fetchCommentsByProduct(widget.product.id);
                  _commentController.clear();
                }
              },
              child: const Text('Thêm bình luận'),
            ),
          ],
        ),
      ),
    );
  }
}
