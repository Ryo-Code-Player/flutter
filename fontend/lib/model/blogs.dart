class Blog {
  final String title;
  final String content;
  final String summary;
  final String photo;

  Blog({
    required this.title,
    required this.content,
    required this.summary,
    required this.photo,
  });

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      title: json['title']?.toString() ?? '',
      content: json['content']?.toString() ?? '',
      summary: json['summary']?.toString() ?? '',
      photo: json['photo']?.toString() ?? '',
    );
  }
}
