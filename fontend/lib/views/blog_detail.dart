import 'package:flutter/material.dart';
import 'package:flutterbekeryapp/model/blogs.dart';

class BlogDetailScreen extends StatelessWidget {
  final Blog blog;

  BlogDetailScreen({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(blog.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Ảnh đại diện
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  blog.photo, // Hiển thị ảnh từ thuộc tính 'photo' trong blog
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 250,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.broken_image, size: 80, color: Colors.grey);
                  },
                ),
              ),
              const SizedBox(height: 16),
              
              // Tiêu đề bài viết
              Text(
                blog.title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              
              // Nội dung bài viết
              Text(
                blog.content, // Nội dung bài viết
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              
              // Hiển thị trạng thái bài viết
            ],
          ),
        ),
      ),
    );
  }

  
}
