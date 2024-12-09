import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutterbekeryapp/model/blogs.dart';
import 'package:flutterbekeryapp/providers/blog_provider.dart';
import 'package:flutterbekeryapp/views/blog_detail.dart';

class BlogGridScreen extends ConsumerStatefulWidget {
  const BlogGridScreen({Key? key}) : super(key: key);

  @override
  _BlogGridScreenState createState() => _BlogGridScreenState();
}

class _BlogGridScreenState extends ConsumerState<BlogGridScreen> with AutomaticKeepAliveClientMixin {
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  Future<String?> _getToken() async {
    return await _secureStorage.read(key: 'auth_token');
  }

  Future<void> _refreshBlogs(String token) async {
    ref.invalidate(blogListProvider(token));
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blog"),
        centerTitle: true,
      ),
      body: FutureBuilder<String?>(
        future: _getToken(),
        builder: (context, tokenSnapshot) {
          if (tokenSnapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (tokenSnapshot.hasError || tokenSnapshot.data == null) {
            return Center(
              child: Text(
                'Không thể tải blogs. Vui lòng đăng nhập lại.',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            );
          }

          final token = tokenSnapshot.data!;
          final blogListAsync = ref.watch(blogListProvider(token));

          return RefreshIndicator(
            onRefresh: () => _refreshBlogs(token),
            child: blogListAsync.when(
              data: (blogs) {
                if (blogs.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.article_outlined, 
                          size: 80, 
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Chưa có bài viết nào',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  );
                }

                return GridView.builder(
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: blogs.length,
                  itemBuilder: (context, index) {
                    final blog = blogs[index];
                    return _buildBlogCard(context, blog);
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline, 
                      size: 80, 
                      color: Colors.red,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Đã có lỗi xảy ra',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      error.toString(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBlogCard(BuildContext context, Blog blog) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlogDetailScreen(blog: blog),
          ),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: blog.photo.isNotEmpty
                ? Image.network(
                    blog.photo,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 150,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded / 
                              loadingProgress.expectedTotalBytes!
                            : null,
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 150,
                        color: Colors.grey[200],
                        child: const Center(
                          child: Icon(
                            Icons.broken_image, 
                            size: 50, 
                            color: Colors.grey,
                          ),
                        ),
                      );
                    },
                  )
                : Container(
                    height: 150,
                    color: Colors.grey[200],
                    child: const Center(
                      child: Icon(
                        Icons.image_not_supported, 
                        size: 50, 
                        color: Colors.grey,
                      ),
                    ),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    blog.title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    blog.summary,
                    style: Theme.of(context).textTheme.bodySmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}