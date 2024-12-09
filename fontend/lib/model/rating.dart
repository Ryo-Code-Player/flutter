class Rating {
  final int id;
  final int userId;
  final int productId;
  final double rating;
  final String review;
  final String createdAt;
  final String updatedAt;

  Rating({
    required this.id,
    required this.userId,
    required this.productId,
    required this.rating,
    required this.review,
    required this.createdAt,
    required this.updatedAt,
  });

  // Phương thức từ JSON
  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      id: json['id'],
      userId: json['userId'],
      productId: json['productId'],
      rating: (json['rating'] as num).toDouble(),
      review: json['review'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

  // Phương thức chuyển thành JSON (nếu cần)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'productId': productId,
      'rating': rating,
      'review': review,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
