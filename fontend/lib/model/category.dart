class Category {
  final String title;
  final String photo;

  Category({required this.title, required this.photo});

  // Phương thức từ JSON
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      title: json['title'],  // Tên danh mục
      photo: json['photo'],  // URL hình ảnh
    );
  }
}
