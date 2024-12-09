class Comment {
  final int id;
  final int userId; // ID người dùng
  final String name; // Tên người dùng
  final String email; // Email của người dùng
  final String? url; // URL của người dùng (nếu có, có thể null)
  final String content; // Nội dung bình luận
  final int productId; // ID của sản phẩm
  final String status; // Trạng thái bình luận (active/inactive)
  final String createdAt; // Thời gian tạo bình luận
  final String updatedAt; // Thời gian cập nhật bình luận

  Comment({
    required this.id,
    required this.userId,
    required this.name,
    required this.email,
    this.url, // Làm cho `url` có thể null
    required this.content,
    required this.productId,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  // Phương thức tạo Comment từ dữ liệu JSON
  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'],
      userId: json['user_id'],
      name: json['name'],
      email: json['email'],
      url: json['url'] ?? '', // Nếu `url` là null, trả về chuỗi rỗng
      content: json['content'],
      productId: json['product_id'],
      status: json['status'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  // Phương thức chuyển Comment thành JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'name': name,
      'email': email,
      'url': url, // Đảm bảo nếu `url` là null thì trả về null
      'content': content,
      'product_id': productId,
      'status': status,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
